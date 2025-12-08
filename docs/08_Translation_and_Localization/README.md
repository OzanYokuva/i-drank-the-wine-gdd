# Translation and Localization

## Overview

This directory contains all localization resources, translation workflows, and language-specific documentation for "I Drank The Wine: Inheritance".

---

## 📋 Supported Languages

The game supports **12 languages** in total. See [supported-languages.md](supported-languages.md) for the complete list with locale codes.

**Primary Languages:**
- **English (en)** - Source language
- **Turkish (tr)** - Primary target language

**Additional Languages:**
French, German, Italian, Spanish, Japanese, Korean, Russian, Portuguese (Brazil), Chinese (Simplified), Chinese (Traditional), Polish

---

## 🔄 Translation Workflow

### 1. Source Content (English)
All game text is authored in **English** in Unity Localization tables.

### 2. Translation Generation
Translations are generated using the **Unity Editor LocalizationAssistant** tool:

**Process:**
1. Open Unity Editor
2. Window → Claude → Localization Assistant
3. Select String Table Collection
4. Choose target languages
5. Click "Generate Translations"
6. Preview translations
7. Apply if acceptable
8. Export to CSV

**Technology:**
- Claude API (Anthropic Sonnet 4)
- Context-aware translation prompts
- Batch translation support (up to 11 languages simultaneously)

### 3. CSV Export
Translated tables are exported to CSV format for version control:

**Location:** `docs/08_Translation_and_Localization/csv/`

**Export Steps:**
1. Unity: Window → Asset Management → Localization Tables
2. Select table collection
3. Export → CSV
4. Save to csv/ folder
5. Commit to Git

### 4. Version Control
All CSV files are tracked in Git:
- Easy diff for translation changes
- Collaboration support
- Backup and recovery
- Integration with external translation tools (if needed)

---

## 📁 Directory Structure

```
08_Translation_and_Localization/
├── README.md                    ← This file
├── supported-languages.md       ← Language list and codes
├── csv/                         ← Unity CSV exports
│   ├── IntroSubtitle.csv
│   ├── DemoDialogsLvl1.csv
│   ├── DemoDialogsLvl2.csv
│   ├── DemoDialogsLvl3.csv
│   ├── MenuUILoc.csv
│   ├── Items_N_Stuff.csv
│   └── IngameTexts.csv
├── english/                     ← English source texts (future)
└── turkish/                     ← Turkish localization notes (future)
```

---

## 🛠️ Unity Localization Setup

### String Table Collections
Game text is organized in Unity String Table Collections:

**Current Tables:**
- **IntroSubtitle** - Game intro subtitles
- **DemoDialogsLvl1** - Level 1 character dialogues
- **DemoDialogsLvl2** - Level 2 character dialogues
- **DemoDialogsLvl3** - Level 3 character dialogues
- **MenuUILoc** - Menu and UI text
- **Items_N_Stuff** - Item names and descriptions
- **IngameTexts** - In-game UI text and prompts

### Key Naming Convention
All localization keys use **UPPERCASE_WITH_UNDERSCORES** format:

**Examples:**
```
MENU_START
SUBTITLE_INTRO_001
DIALOG_CENGIZ_1_1_1
ITEM_NAME_CONCRETE_SLEDGEHAMMER
```

---

## ✅ Quality Assurance

### Translation Review Checklist
- [ ] Context preserved
- [ ] Character voice maintained
- [ ] Cultural appropriateness
- [ ] Length fits UI constraints
- [ ] No placeholder text (e.g., "TODO", "TEST")
- [ ] Special characters display correctly
- [ ] Formatting codes intact (if any)

### Testing Process
1. Apply translations in Unity
2. Build and run game
3. Check UI text rendering
4. Verify text fits in UI elements
5. Test language switching (if implemented)
6. Review dialogue flow in context

---

## 🌍 Localization Best Practices

### Context Matters
The LocalizationAssistant tool provides context to Claude API:
- Source language: English
- Target audience: Gamers 18-35
- Tone: Dramatic, philosophical, combat-focused
- Character voice considerations

### Cultural Adaptation
Translations should:
- Adapt idioms appropriately
- Respect cultural sensitivities
- Maintain game's tone and atmosphere
- Consider regional gaming terminology

### Length Considerations
- UI elements have space constraints
- Shorter is often better for menus
- Dialogue can be more expressive
- Test in actual game UI

---

## 📝 Future Plans

### Planned Additions
- [ ] Translation memory system
- [ ] Glossary for consistent terminology
- [ ] Character-specific voice guidelines
- [ ] Community translation support
- [ ] Professional review for key languages

### External Tools
If needed in the future:
- Google Sheets integration for collaborative editing
- Professional translation agency workflow
- Community submission system

---

## 🔗 Related Documentation

- [Main GDD](../01_GDD/main-gdd.md) - Game design context
- [Characters](../03_Characters_and_Actors/) - Character voice notes
- [Story & World](../04_Story_and_World/) - Narrative context
- [Unity Technical Docs](../07_Technical_Documentation/) - Implementation details

---

## 📞 Translation Questions?

For translation-related questions or issues:
1. Check this README
2. Review supported-languages.md
3. Check Unity Localization documentation
4. Contact project leads

---

**Last Updated:** December 8, 2025  
**Maintained by:** Ozan Yokuva, Kerem Yokuva  
**Translation Tool:** Unity LocalizationAssistant + Claude API
