# Supported Languages

**Last Updated:** December 9, 2024  
**Total Languages:** 12

---

## 📊 Language List

### Primary Languages

| Language | Locale Code | Native Name | Status | Priority |
|----------|-------------|-------------|--------|----------|
| English | `en` | English | ✅ Complete | Source |
| Turkish | `tr` | Türkçe | ✅ Complete | High |

### Secondary Languages (European)

| Language | Locale Code | Native Name | Status | Priority |
|----------|-------------|-------------|--------|----------|
| French | `fr` | Français | ✅ Complete | High |
| German | `de` | Deutsch | ✅ Complete | High |
| Italian | `it` | Italiano | ✅ Complete | Medium |
| Spanish | `es` | Español | ✅ Complete | Medium |
| Polish | `pl` | Polski | ✅ Complete | Medium |
| Russian | `ru` | Русский | ✅ Complete | Medium |
| Portuguese (Brazil) | `pt-BR` | Português (Brasil) | ✅ Complete | Medium |

### Secondary Languages (Asian)

| Language | Locale Code | Native Name | Status | Priority |
|----------|-------------|-------------|--------|----------|
| Japanese | `ja` | 日本語 | ✅ Complete | High |
| Korean | `ko` | 한국어 | ✅ Complete | Medium |
| Chinese (Simplified) | `zh-Hans` | 简体中文 | ✅ Complete | High |

---

## 🎉 Demo Completion Status

All 12 languages are **100% complete** for demo content:
- **Total Keys:** 90
- **Total Translations:** 1,080 (90 × 12)
- **CSV Files:** 7 (all containing full 12-language support)

**CSV Files:**
1. IntroSubtitle.csv (14 keys)
2. DemoDialogsLvl1.csv (12 keys)
3. DemoDialogsLvl2.csv (13 keys)
4. DemoDialogsLvl3.csv (11 keys)
5. MenuUILoc.csv (19 keys)
6. Items_N_Stuff.csv (13 keys)
7. IngameTexts.csv (8 keys)

See [Localization Completion Summary](localization_completion_summary.md) for detailed report.

---

## 🎯 Language Selection Rationale

### English (`en`)
- **Role:** Source language
- **Reason:** Primary development language, largest gaming market
- **Usage:** All content authored in English first

### Turkish (`tr`)
- **Role:** Primary target language
- **Reason:** Developer native language, local market focus
- **Usage:** Secondary source for cultural context

### French (`fr`), German (`de`), Spanish (`es`)
- **Role:** Major European markets
- **Reason:** Large Steam user base, strong gaming communities
- **Usage:** High priority for PC release

### Japanese (`ja`), Korean (`ko`), Chinese (`zh-Hans`)
- **Role:** Major Asian markets
- **Reason:** Strong action game audiences, important console markets
- **Usage:** Critical for future console ports

### Italian (`it`), Polish (`pl`), Russian (`ru`), Portuguese (BR) (`pt-BR`)
- **Role:** Growing markets
- **Reason:** Expanding gaming communities, good ROI potential
- **Usage:** Important for broader reach

---

## 🔧 Unity Localization Setup

### Locale Identifiers

Unity uses the following locale identifiers in the Localization system:

```csharp
// Primary
LocaleIdentifier.Code("en")    // English
LocaleIdentifier.Code("tr")    // Turkish

// European
LocaleIdentifier.Code("fr")    // French
LocaleIdentifier.Code("de")    // German
LocaleIdentifier.Code("it")    // Italian
LocaleIdentifier.Code("es")    // Spanish
LocaleIdentifier.Code("pl")    // Polish
LocaleIdentifier.Code("ru")    // Russian
LocaleIdentifier.Code("pt-BR") // Portuguese (Brazil)

// Asian
LocaleIdentifier.Code("ja")    // Japanese
LocaleIdentifier.Code("ko")    // Korean
LocaleIdentifier.Code("zh-Hans") // Chinese (Simplified)
```

### Locale Creation Order
Locales are created in Unity in the following order:
1. English (en) - Source
2. Turkish (tr) - Primary target
3. French (fr), German (de), Japanese (ja) - High priority
4. Spanish (es), Italian (it), Chinese (zh-Hans) - Medium priority
5. Korean (ko), Polish (pl), Russian (ru), Portuguese (pt-BR) - Medium priority

---

## 📝 CSV Export Format

CSV files exported from Unity contain all 12 languages plus metadata:

**Column Structure:**
```
Key, Id, zh-Hans, en, fr, de, it, ja, ko, pl, pt-BR, ru, es, tr
```

**Example Row:**
```csv
"UI.MainMenu.Continue",367895422193664,"继续","CONTINUE","CONTINUER","FORTSETZEN","CONTINUA","続きから","계속하기","KONTYNUUJ","CONTINUAR","ПРОДОЛЖИТЬ","CONTINUAR","DEVAM ET"
```

---

## 🌍 Regional Considerations

### Character Set Support
All languages require proper font support:
- **Latin:** en, fr, de, it, es, pl, pt-BR, tr
- **Cyrillic:** ru
- **CJK (Chinese, Japanese, Korean):** zh-Hans, ja, ko

**Font Requirements:**
- UI Font: Must support all character sets
- Dialogue Font: May use stylized fonts with fallback
- Monospace Font: For debug/console (optional)

### Text Direction
All supported languages use **Left-to-Right (LTR)** text direction.

**Note:** If Arabic or Hebrew are added in future, RTL support will be required.

### Number Formats
Different regions use different number formats:
- **English:** 1,234.56
- **German/Turkish:** 1.234,56
- **Asian:** Various (10,000 = 万 in Chinese/Japanese)

**Unity Localization handles this automatically for supported types.**

---

## 📊 Translation Statistics (Demo)

Current translation coverage for demo content:

| String Table | Total Keys | EN | TR | FR | DE | IT | JA | KO | PL | PT-BR | RU | ES | ZH |
|--------------|------------|----|----|----|----|----|----|----|----|-------|----|----|-----|
| IntroSubtitle | 14 | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| DemoDialogsLvl1 | 12 | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| DemoDialogsLvl2 | 13 | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| DemoDialogsLvl3 | 11 | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| MenuUILoc | 19 | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| Items_N_Stuff | 13 | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| IngameTexts | 8 | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |

**Total:** 90 keys × 12 languages = **1,080 translations** ✅

---

## 🔮 Future Language Considerations

### Potential Additions
Languages being considered for future updates:
- Arabic (`ar`) - Growing market
- Hebrew (`he`) - Niche but engaged community
- Chinese Traditional (`zh-Hant`) - Taiwan/Hong Kong market
- Swedish (`sv`), Norwegian (`no`), Danish (`da`) - Nordic markets

### Selection Criteria
New languages will be evaluated based on:
1. Market size and potential
2. Community requests
3. Platform requirements (console certification)
4. Translation cost vs. ROI
5. Technical complexity (fonts, text direction)

---

## 🛠️ Tools and Resources

### Unity Localization Package
- **Version:** 1.5.8+ (as of demo)
- **Documentation:** https://docs.unity3d.com/Packages/com.unity.localization@1.5/manual/

### Translation Tools
- **Primary:** Unity LocalizationAssistant (Claude API integration)
- **Backup:** Manual CSV editing
- **Future:** Possible Google Sheets integration

### Quality Assurance
- In-game testing for all languages
- Native speaker review (when available)
- Community feedback post-release

---

## 📞 Contact

For language-specific questions or to report translation issues:
- Review this document
- Check main localization README
- Contact: Ozan Yokuva, Kerem Yokuva

---

## 🔗 Related Documents

- [Localization README](README.md) - Translation workflow and system overview
- [Localization Completion Summary](localization_completion_summary.md) - Detailed completion report
- [Main GDD](../01_GDD/main-gdd.md) - Game design context
- [Task List](../10_Project_Management/Task-List.md) - Project progress tracking

---

**Abbreviations Used:**
- **EN** = English
- **TR** = Turkish  
- **FR** = French
- **DE** = German (Deutsch)
- **IT** = Italian
- **ES** = Spanish (Español)
- **JA** = Japanese
- **KO** = Korean
- **PL** = Polish
- **PT-BR** = Portuguese (Brazil)
- **RU** = Russian
- **ZH** = Chinese (Simplified) (zh-Hans)