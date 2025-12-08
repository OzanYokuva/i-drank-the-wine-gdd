# Claude Chat Notes
**Date:** December 8, 2025  
**Session:** MasterChat Pre-Cleanup Summary  
**Purpose:** Brief summary of discussions/decisions not captured in Git docs

---

## 📋 Session History Summary

### Initial Setup (Start of MasterChat)
- Set up Git repository structure
- Created folder hierarchy (01_GDD through 10_Project_Management)
- Established documentation workflow
- Created .gitignore with `ignore/` folder for scripts/temp files

### Philosophy Deep Dive
**Key Discussions:**
- Refined Carl Jung quote interpretation: Internal journey to darkest self (not external descent)
- Finalized game motto after several iterations
- Established four-pillar philosophical framework
- Discussed spoiler management strategy (contextual, not end-of-document)

**Important Decision:**
Ancestors weren't conscious balancers—they were authentic selves who drew lines of their truth, which made them perfect pieces in balance whether they understood it or not.

**Analogy Used:** Spirited Away (Chihiro keeping her name vs river spirit forgetting)

### GDD Development
**Completed:**
- Main GDD structure with Steam page info integration
- Philosophy framework document
- Task list with 48 tasks organized by phase
- Integrated character bloodlines (Hulagu Khan, Joan of Arc, Baldwin IV, Richard Lionheart)

**Key Challenge Addressed:**
User noted: "What Makes Different?" section in GDD felt different from Steam description. Solution: Aligned USPs with Steam page's "deep skill system + survivor-style cards + realistic physics + real-world issues" messaging.

**Pending Notes for Future Updates:**
```markdown
Author correction needed:
- Authors: Ozan Yokuva, Kerem Yokuva
- Contributors: Expected
- Reviewers: Eventually

Ancestor balance explanation needs update in spoiler sections
```

### Unity Localization Integration
**Achievement:** Successfully integrated Claude API into Unity Editor

**Technical Details:**
- Created LocalizationAssistant.cs Unity Editor window
- Went through 8+ iterations fixing Unity API compatibility issues
- Final solution: Uses StringTableCollection, handles key exceptions, no language selection (always EN → target languages)
- Supports 11 target languages simultaneously
- Preview & approval workflow before applying translations

**Workflow:**
1. Select string table collection in Unity
2. Choose target languages (Turkish, French, German, etc.)
3. Claude API generates translations with context awareness
4. Preview translations before applying
5. Export to CSV: `docs/08_Translation_and_Localization/csv/`

**Status:** Working successfully, user testing translation quality

### Documentation Structure Decisions

**Spoiler Management:**
- Don't put all spoilers at end
- Place spoilers contextually after each relevant section
- Use `<details>` tags for expandable spoilers
- Format: `<summary>🚨 SPOILER: Brief</summary>`

**Cross-Reference Strategy:**
- Always use relative paths
- One source of truth for each piece of information
- Reference Git docs rather than duplicating content
- Keep Project Definition minimal, point to Git for details

### Workflow Patterns Established

**"Not Al" Pattern:**
User says "not al" (take note) → Claude collects edits/corrections → User says "bas" (print) → Claude outputs updated document with all accumulated changes

**File Update Workflow:**
1. Claude creates artifact
2. User downloads as markdown
3. User places in correct Git location
4. User commits and pushes
5. (Optional) User adds file to Claude project for review

**No Duplication Rule:**
Never write same content in multiple places. If info exists in Git, reference it rather than repeating it.

---

## 🎯 Current Work Focus

### Active Tasks
- Refining GDD content
- Collecting character information
- Documenting story structure
- Exporting localization CSVs

### Next Steps Discussed
1. Export Unity localization tables to CSV
2. Review translation quality
3. Continue filling character documents
4. Develop story documentation

### Pending Clarifications
- City narrative roles (currently TBD in GDD)
- Detailed art direction
- Detailed audio direction
- Multiplayer integration details

---

## 💡 Important Insights

### Game Design Insights
- **Inheritance ≠ Conscious balancing**  
  It's about being your authentic self, which naturally places you in balance
  
- **Anger's role:**  
  Wine of anger burns away false identity layers (anger → frustration → doubt → self-awareness → new anger)

- **Victory condition:**  
  Not destroying evil, but finding your place in eternal balance

### Documentation Insights
- **Minimal duplication:** Git is source of truth
- **Contextual spoilers:** Better UX than end-of-doc dumps
- **Task granularity:** 48 tasks across 6 phases works well for tracking

### Technical Insights
- Unity Localization API is tricky (took 8 versions to get right)
- Claude API integration powerful for batch translation
- CSV export essential for version control

---

## 🔧 Tools & Integrations

### Successfully Integrated
- ✅ GitHub (working with local Git + push workflow)
- ✅ Unity Editor extension (LocalizationAssistant)
- ✅ Claude API (Anthropic, for translations)

### Attempted But Not Used
- ❌ Google Drive (requires Pro plan)
- ❌ GitLab direct integration (access token didn't work with tools)

### Current Workflow
- Local Git repository
- Manual file placement (works fine)
- GitHub as remote
- Claude reads files via project files feature

---

## 📝 Conventions Established

### Naming
- Files: `lowercase-with-hyphens.md`
- Unity localization keys: `UPPERCASE_WITH_UNDERSCORES`
- Git commits: `[Category] Description`

### Content
- Documentation: English
- Chat: Turkish
- Philosophical quotes: Original language (English)
- Character names: English (e.g., Hulagu Khan not Hülagü Han)

### Organization
- Relative paths always
- Max 3-level hierarchy when possible
- README in every major folder
- `ignore/` for temp/scripts
- `assets/` for references
- `templates/` for reusable files

---

## 🎮 Game-Specific Notes

### Character Bloodlines
- Cengiz → Hulagu Khan
- [Others TBD] → Joan of Arc, Baldwin IV, Richard Lionheart

### Cities
- Demo: Paris (complete)
- Planned: Istanbul, London, Tokyo
- Each has multi-stage routes, mini-bosses, main boss

### Combat System
- 3 styles per character:
  1. Core Style (bare-hands)
  2. Weapon Style 1 (close-quarters)
  3. Weapon Style 2 (heavy/extended-range)

### Localization
- 12 languages total
- Source: English
- Primary target: Turkish
- Others: French, German, Spanish, Italian, Portuguese (BR), Russian, Japanese, Korean, Chinese (Simplified), Chinese (Traditional)

---

## 🚀 Session Workflow (Established)

### Starting a Session
1. Read Project Definition (quick reference)
2. Read Instructions (rules & principles)
3. Read Chat Notes (this file - recent context)
4. Check task-list.md in Git
5. Confirm with user what to work on

### During Session
- Work in artifacts (markdown)
- User downloads and places in Git
- Update task-list.md status
- Take notes of decisions for Chat Notes

### Ending Session
- Summarize accomplishments
- Update Chat Notes if significant decisions made
- User commits and pushes to Git

### Before Clearing MasterChat
- Update all 3 files:
  1. Project Definition (if structure changed)
  2. Instructions (if new principles emerged)
  3. Chat Notes (current session summary)

---

## 🎯 What's NOT in This File

Information that lives in Git (don't duplicate here):
- Detailed game design → `docs/01_GDD/main-gdd.md`
- Philosophy framework → `docs/01_GDD/philosophy-framework.md`
- Character details → `docs/03_Characters_and_Actors/`
- Story details → `docs/04_Story_and_World/`
- Complete task list → `docs/10_Project_Management/task-list.md`

This file is only for:
- Discussion summaries
- Decision rationales
- Workflow patterns
- Temporary notes before Git update

---

**Last Updated:** December 8, 2025  
**Next Review:** When MasterChat needs clearing or significant new decisions made
