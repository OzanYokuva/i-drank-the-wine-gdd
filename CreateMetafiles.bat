@echo off
echo ================================================
echo Creating All _meta.json Files
echo ================================================
echo.

REM 1. Ana menu (site/pages/_meta.json)
echo [1/6] Creating main menu...
(
echo {
echo   "index": "🏠 Home",
echo   "gdd": "📖 Game Design",
echo   "mechanics": "⚙️ Mechanics",
echo   "characters": "👥 Characters",
echo   "story": "📚 Story ^& World",
echo   "art": "🎨 Art ^& Graphics",
echo   "audio": "🎵 Audio ^& Music",
echo   "technical": "💻 Technical",
echo   "localization": "🌍 Localization",
echo   "ui-ux": "🖥️ UI/UX",
echo   "project": "📊 Project Management"
echo }
) > site\pages\_meta.json

REM 2. GDD menu
echo [2/6] Creating GDD menu...
(
echo {
echo   "*": {
echo     "theme": {
echo       "breadcrumb": true
echo     }
echo   },
echo   "main-gdd": "📄 Main GDD",
echo   "philosophy-framework": "🔺 Philosophy Framework",
echo   "change-log": "📝 Changelog"
echo }
) > site\pages\gdd\_meta.json

REM 3. Characters menu
echo [3/6] Creating Characters menu...
(
echo {
echo   "*": {
echo     "theme": {
echo       "breadcrumb": true
echo     }
echo   },
echo   "character-cengiz": "⚔️ Cengiz",
echo   "playable-characters": "🎮 Playable Characters",
echo   "npcs": "💬 NPCs",
echo   "enemies-bosses": "👹 Enemies ^& Bosses"
echo }
) > site\pages\characters\_meta.json

REM 4. Localization menu
echo [4/6] Creating Localization menu...
(
echo {
echo   "*": {
echo     "theme": {
echo       "breadcrumb": true
echo     }
echo   },
echo   "supported-languages": "🌍 Supported Languages",
echo   "localization_completion_summary": "✅ Completion Status"
echo }
) > site\pages\localization\_meta.json

REM 5. Project menu
echo [5/6] Creating Project menu...
(
echo {
echo   "*": {
echo     "theme": {
echo       "breadcrumb": true
echo     }
echo   },
echo   "Task-List": "📋 Task List"
echo }
) > site\pages\project\_meta.json

REM 6. Mechanics menu (bonus)
echo [6/6] Creating Mechanics menu...
(
echo {
echo   "*": {
echo     "theme": {
echo       "breadcrumb": true
echo     }
echo   }
echo }
) > site\pages\mechanics\_meta.json

echo.
echo ================================================
echo ✅ All _meta.json files created successfully!
echo ================================================
echo.
echo Next: Run "node scripts\sync-docs.js"
echo Then: Refresh browser (F5)
echo ================================================
pause