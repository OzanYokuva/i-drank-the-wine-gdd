const fs = require('fs-extra');
const path = require('path');

const mappings = [
  { from: 'docs/01_GDD', to: 'site/pages/gdd' },
  { from: 'docs/02_Game_Mechanics', to: 'site/pages/mechanics' },
  { from: 'docs/03_Characters_and_Actors', to: 'site/pages/characters' },
  { from: 'docs/04_Story_and_World', to: 'site/pages/story' },
  { from: 'docs/05_Art_and_Graphics', to: 'site/pages/art' },
  { from: 'docs/06_Audio_and_Music', to: 'site/pages/audio' },
  { from: 'docs/07_Technical_Documentation', to: 'site/pages/technical' },
  { from: 'docs/08_Translation_and_Localization', to: 'site/pages/localization' },
  { from: 'docs/09_UI_UX', to: 'site/pages/ui-ux' },
  { from: 'docs/10_Project_Management', to: 'site/pages/project' }
];

async function syncDocs() {
  console.log('🔄 Syncing documentation files...\n');
  
  for (const mapping of mappings) {
    try {
      // Hedef klasörü oluştur (yoksa)
      await fs.ensureDir(mapping.to);
      
      // Mevcut .md dosyalarını sil (ama _meta.json'ları koru!)
      await cleanMdFiles(mapping.to);
      
      // Kaynak klasörü kopyala
      await fs.copy(mapping.from, mapping.to, {
        filter: (src) => {
          // Sadece .md dosyalarını ve klasörleri kopyala
          return src.endsWith('.md') || fs.statSync(src).isDirectory();
        },
        overwrite: true
      });
      
      // README.md'leri index.md'ye dönüştür
      await renameReadmesToIndex(mapping.to);
      
      console.log(`✅ ${mapping.from} → ${mapping.to}\n`);
    } catch (error) {
      console.error(`❌ Error syncing ${mapping.from}:`, error.message);
    }
  }
  
  console.log('✨ Documentation sync complete!\n');
}

// Sadece .md dosyalarını sil, _meta.json'ları koru
async function cleanMdFiles(dir) {
  if (!fs.existsSync(dir)) return;
  
  const items = await fs.readdir(dir, { withFileTypes: true });
  
  for (const item of items) {
    const itemPath = path.join(dir, item.name);
    
    if (item.isDirectory()) {
      // Alt klasörlerdeki .md dosyalarını da temizle
      await cleanMdFiles(itemPath);
    } else if (item.name.endsWith('.md')) {
      // Sadece .md dosyalarını sil
      await fs.remove(itemPath);
    }
    // .json, .jsx, .css vb. dosyalara DOKUNMA!
  }
}

// README.md'leri index.md'ye çevir
async function renameReadmesToIndex(dir) {
  const items = await fs.readdir(dir, { withFileTypes: true });
  
  for (const item of items) {
    if (item.isDirectory()) {
      const subDir = path.join(dir, item.name);
      
      // Bu klasördeki README'yi index'e çevir
      const readmePath = path.join(subDir, 'README.md');
      const indexPath = path.join(subDir, 'index.md');
      
      if (fs.existsSync(readmePath)) {
        await fs.rename(readmePath, indexPath);
        console.log(`  ✓ ${item.name}/README.md → index.md`);
      }
      
      // Daha alt klasörleri de kontrol et
      await renameReadmesToIndex(subDir);
    }
  }
  
  // Ana klasördeki README'yi de çevir
  const readmePath = path.join(dir, 'README.md');
  const indexPath = path.join(dir, 'index.md');
  
  if (fs.existsSync(readmePath)) {
    await fs.rename(readmePath, indexPath);
    console.log(`  ✓ README.md → index.md`);
  }
}

// Çalıştır
syncDocs().catch(error => {
  console.error('Fatal error:', error);
  process.exit(1);
});