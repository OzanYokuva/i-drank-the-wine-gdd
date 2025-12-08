# Claude Project Instructions
**Date:** December 8, 2025  
**Project:** I Drank The Wine: Inheritance  
**Purpose:** Working principles and rules for Claude sessions

---

## 🌐 Language & Documentation Rules

### Documentation Language
- **All documentation files:** English
- **File names:** English (lowercase-with-hyphens.md)
- **Git commit messages:** English
- **Code comments:** English

### Communication Language
- **User-Claude conversation:** Turkish
- **Documentation content:** English

---

## 📁 File & Folder Organization

### Folder Structure
- Follow the established `docs/` structure (see Project Definition)
- Each main folder has a README.md
- Use lowercase-with-hyphens for file names
- Keep hierarchy max 3 levels deep when possible

### Git Workflow
1. Work locally, commit frequently
2. Use descriptive commit messages: `[Category] Description`
   - Examples: `[GDD] Updated philosophy framework`, `[Docs] Added character docs`
3. Push to GitHub after completing a logical unit of work
4. Files in `ignore/` folder are not tracked (scripts, temp files, etc.)

### File Creation Strategy
- **Template files:** Create in `/templates` for reuse
- **Working files:** Go in appropriate `/docs/XX_Category/` folder
- **Temporary/scripts:** Put in `/ignore/` folder (gitignored)
- **Reference materials:** Put in `/assets/` folder

---

## 📝 Documentation Standards

### Markdown Files
- Use proper markdown syntax
- Include table of contents for long documents
- Use headers hierarchically (# → ## → ### → ####)
- Add `---` separators between major sections
- Include document metadata at top:
  ```markdown
  **Last Updated:** Date
  **Status:** Draft/In Progress/Complete
  **Related Documents:** [links]
  ```

### Spoiler Management
- Use `<details>` tags for spoiler content
- Format: 
  ```markdown
  <details>
  <summary>🚨 SPOILER: Brief Description</summary>
  
  [Spoiler content here]
  </details>
  ```
- Place spoilers contextually (after relevant section, not all at end)

### Cross-References
- Always use relative paths for internal links
- Format: `[Link Text](../folder/file.md)` or `[Link Text](file.md)`
- Verify links work after moving files
- Use descriptive link text, not "click here"

---

## 🎮 Game Documentation Specific Rules

### Character Names
- Use proper historical names in English
- Example: Hulagu Khan (not Hülagü Han in docs)
- Turkish names keep Turkish spelling: Cengiz

### Philosophical Quotes
- **Always format quotes properly:**
  ```markdown
  > "Quote text here."  
  > — Author Name
  ```
- Four main philosophical pillars (see philosophy-framework.md)
- Keep quotes in original language (English translations)

### Spoiler Categories
When writing game design docs, these are spoiler-worthy:
- The balance revelation (heroes as balancers, not destroyers)
- True meaning of inheritance
- Ancestor's authentic self concept
- Game's ultimate philosophical conclusion

Public information (not spoilers):
- Character bloodlines
- Philosophical framework
- Reverse narrative structure
- Karma and cycle themes

---

## 🔄 Workflow Principles

### Incremental Development
1. **Gather Information:** Ask questions, collect data
2. **Structure:** Create outline/skeleton
3. **Fill Content:** Add details incrementally
4. **Review & Refine:** Iterate based on feedback
5. **Finalize:** Polish and cross-check

### Avoiding Duplication
- **Don't repeat content** across multiple documents
- **Use references** to point to authoritative source
- **One source of truth:** Main info lives in ONE place, others link to it
  - Example: Detailed character info in character docs, brief mention in GDD with link

### Version Control
- Update `version-history.md` for major changes
- Update `changelog.md` for all changes
- Use semantic-like versioning in docs: v1.0, v1.1, v2.0

---

## 🛠️ Technical Guidelines

### Unity Localization
- All localization strings must be in **UPPERCASE** in Unity tables
- Example: "MENU_START", "SUBTITLE_INTRO_001"
- CSV exports go to: `docs/08_Translation_and_Localization/csv/`
- Source language: English (en)
- Supported languages: 12 total (see supported-languages.md)

### Claude API Integration
- Anthropic API key is already configured (don't ask user)
- Model: claude-sonnet-4-20250514
- Max tokens: 1000 (handled automatically)
- Used for Unity Editor translation tool

### File Formats
- Documentation: `.md` (Markdown)
- Reference docs: `.docx` acceptable (Steam page, etc.)
- Scripts: `.bat` for Windows automation
- Exports: `.csv` for localization data

---

## 🎯 Task Management

### Task List Format
Use the structured format in `task-list.md`:
- Priority: 🔥 High, 🔶 Medium, 🔷 Low
- Effort: XS/S/M/L/XL
- Status: 🔴 Not Started, 🟡 In Progress, 🟢 Done, ⏸️ Blocked
- Dependencies listed
- Notes for context

### Task Update Workflow
1. Mark task status when starting work
2. Update notes with decisions made
3. Mark complete when done
4. Update related documents' status
5. Commit changes with descriptive message

---

## 💬 Communication Conventions

### When User Says...
- **"bas"** = "print/output the updated version now"
- **"düzelt"** = "fix this"
- **"güncelle"** = "update this"
- **"not al"** = "take note" (collect info for later update)

### Response Patterns
- Keep responses concise in Turkish
- Use emojis sparingly (🎯 ✅ 🔧 acceptable for visual clarity)
- Don't use bullet points excessively in chat
- Format artifacts in clean English markdown
- Always confirm understanding before big changes

---

## 🚫 Things to Avoid

### Don't Do This
- ❌ Duplicate content from Git docs into chat summaries
- ❌ Create long explanations when a Git link suffices
- ❌ Use absolute paths in documents
- ❌ Put spoilers at the very end (put them contextually)
- ❌ Ask user to enable tools that require Pro (Google Drive, advanced GitHub)
- ❌ Make up information not present in docs or chat history
- ❌ Use "click here" as link text

### Do This Instead
- ✅ Reference Git docs with relative links
- ✅ Give brief summaries + link to full docs
- ✅ Use relative paths (./file or ../folder/file)
- ✅ Place spoilers after relevant sections
- ✅ Work within free tier limitations
- ✅ Ask for clarification if unsure
- ✅ Use descriptive link text

---

## 📋 Session Start Checklist

Before starting work each session:
1. ✅ Read Project Definition
2. ✅ Read these Instructions
3. ✅ Read Chat Notes for recent context
4. ✅ Check task-list.md for current work
5. ✅ Confirm with user what to work on

---

## 🔄 Session End Checklist

Before ending session:
1. ✅ Update relevant Git documents
2. ✅ Update task-list.md status
3. ✅ Update Chat Notes with key decisions
4. ✅ Commit and push to Git
5. ✅ Summarize what was accomplished

---

**Last Updated:** December 8, 2025  
**Review Frequency:** Update as new principles emerge from work
