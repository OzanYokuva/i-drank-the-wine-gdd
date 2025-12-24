@echo off
chcp 65001 >nul
echo ================================================
echo Creating ALL _meta.json Files (Fixed Version)
echo ================================================
echo.

REM 1. Main menu
echo [1/10] Creating main menu...
echo { > site\pages\_meta.json
echo   "index": "🏠 Home", >> site\pages\_meta.json
echo   "gdd": "📖 Game Design", >> site\pages\_meta.json
echo   "mechanics": "⚙️ Mechanics", >> site\pages\_meta.json
echo   "characters": "👥 Characters", >> site\pages\_meta.json
echo   "story": "📚 Story & World", >> site\pages\_meta.json
echo   "art": "🎨 Art & Graphics", >> site\pages\_meta.json
echo   "audio": "🎵 Audio & Music", >> site\pages\_meta.json
echo   "technical": "💻 Technical", >> site\pages\_meta.json
echo   "localization": "🌍 Localization", >> site\pages\_meta.json
echo   "ui-ux": "🖥️ UI/UX", >> site\pages\_meta.json
echo   "project": "📊 Project Management" >> site\pages\_meta.json
echo } >> site\pages\_meta.json

REM 2. GDD
echo [2/10] Creating GDD menu...
echo { > site\pages\gdd\_meta.json
echo   "*": { >> site\pages\gdd\_meta.json
echo     "theme": { >> site\pages\gdd\_meta.json
echo       "breadcrumb": true >> site\pages\gdd\_meta.json
echo     } >> site\pages\gdd\_meta.json
echo   }, >> site\pages\gdd\_meta.json
echo   "index": { >> site\pages\gdd\_meta.json
echo     "display": "hidden" >> site\pages\gdd\_meta.json
echo   }, >> site\pages\gdd\_meta.json
echo   "main-gdd": "📄 Main GDD", >> site\pages\gdd\_meta.json
echo   "philosophy-framework": "🔺 Philosophy Framework", >> site\pages\gdd\_meta.json
echo   "change-log": "📝 Changelog" >> site\pages\gdd\_meta.json
echo } >> site\pages\gdd\_meta.json

REM 3. Mechanics
echo [3/10] Creating Mechanics menu...
echo { > site\pages\mechanics\_meta.json
echo   "*": { >> site\pages\mechanics\_meta.json
echo     "theme": { >> site\pages\mechanics\_meta.json
echo       "breadcrumb": true >> site\pages\mechanics\_meta.json
echo     } >> site\pages\mechanics\_meta.json
echo   }, >> site\pages\mechanics\_meta.json
echo   "index": { >> site\pages\mechanics\_meta.json
echo     "display": "hidden" >> site\pages\mechanics\_meta.json
echo   } >> site\pages\mechanics\_meta.json
echo } >> site\pages\mechanics\_meta.json

REM 4. Characters
echo [4/10] Creating Characters menu...
echo { > site\pages\characters\_meta.json
echo   "*": { >> site\pages\characters\_meta.json
echo     "theme": { >> site\pages\characters\_meta.json
echo       "breadcrumb": true >> site\pages\characters\_meta.json
echo     } >> site\pages\characters\_meta.json
echo   }, >> site\pages\characters\_meta.json
echo   "index": { >> site\pages\characters\_meta.json
echo     "display": "hidden" >> site\pages\characters\_meta.json
echo   }, >> site\pages\characters\_meta.json
echo   "character-cengiz": "⚔️ Cengiz", >> site\pages\characters\_meta.json
echo   "playable-characters": { >> site\pages\characters\_meta.json
echo     "display": "hidden" >> site\pages\characters\_meta.json
echo   }, >> site\pages\characters\_meta.json
echo   "npcs": { >> site\pages\characters\_meta.json
echo     "display": "hidden" >> site\pages\characters\_meta.json
echo   }, >> site\pages\characters\_meta.json
echo   "enemies-bosses": { >> site\pages\characters\_meta.json
echo     "display": "hidden" >> site\pages\characters\_meta.json
echo   } >> site\pages\characters\_meta.json
echo } >> site\pages\characters\_meta.json

REM 5. Story
echo [5/10] Creating Story menu...
echo { > site\pages\story\_meta.json
echo   "*": { >> site\pages\story\_meta.json
echo     "theme": { >> site\pages\story\_meta.json
echo       "breadcrumb": true >> site\pages\story\_meta.json
echo     } >> site\pages\story\_meta.json
echo   }, >> site\pages\story\_meta.json
echo   "index": { >> site\pages\story\_meta.json
echo     "display": "hidden" >> site\pages\story\_meta.json
echo   } >> site\pages\story\_meta.json
echo } >> site\pages\story\_meta.json

REM 6. Art
echo [6/10] Creating Art menu...
echo { > site\pages\art\_meta.json
echo   "*": { >> site\pages\art\_meta.json
echo     "theme": { >> site\pages\art\_meta.json
echo       "breadcrumb": true >> site\pages\art\_meta.json
echo     } >> site\pages\art\_meta.json
echo   }, >> site\pages\art\_meta.json
echo   "index": { >> site\pages\art\_meta.json
echo     "display": "hidden" >> site\pages\art\_meta.json
echo   } >> site\pages\art\_meta.json
echo } >> site\pages\art\_meta.json

REM 7. Audio
echo [7/10] Creating Audio menu...
echo { > site\pages\audio\_meta.json
echo   "*": { >> site\pages\audio\_meta.json
echo     "theme": { >> site\pages\audio\_meta.json
echo       "breadcrumb": true >> site\pages\audio\_meta.json
echo     } >> site\pages\audio\_meta.json
echo   }, >> site\pages\audio\_meta.json
echo   "index": { >> site\pages\audio\_meta.json
echo     "display": "hidden" >> site\pages\audio\_meta.json
echo   } >> site\pages\audio\_meta.json
echo } >> site\pages\audio\_meta.json

REM 8. Technical
echo [8/10] Creating Technical menu...
echo { > site\pages\technical\_meta.json
echo   "*": { >> site\pages\technical\_meta.json
echo     "theme": { >> site\pages\technical\_meta.json
echo       "breadcrumb": true >> site\pages\technical\_meta.json
echo     } >> site\pages\technical\_meta.json
echo   }, >> site\pages\technical\_meta.json
echo   "index": { >> site\pages\technical\_meta.json
echo     "display": "hidden" >> site\pages\technical\_meta.json
echo   } >> site\pages\technical\_meta.json
echo } >> site\pages\technical\_meta.json

REM 9. Localization
echo [9/10] Creating Localization menu...
echo { > site\pages\localization\_meta.json
echo   "*": { >> site\pages\localization\_meta.json
echo     "theme": { >> site\pages\localization\_meta.json
echo       "breadcrumb": true >> site\pages\localization\_meta.json
echo     } >> site\pages\localization\_meta.json
echo   }, >> site\pages\localization\_meta.json
echo   "index": { >> site\pages\localization\_meta.json
echo     "display": "hidden" >> site\pages\localization\_meta.json
echo   }, >> site\pages\localization\_meta.json
echo   "supported-languages": "🌍 Supported Languages", >> site\pages\localization\_meta.json
echo   "localization_completion_summary": "✅ Completion Status" >> site\pages\localization\_meta.json
echo } >> site\pages\localization\_meta.json

REM 10. UI/UX
echo [10/10] Creating UI/UX menu...
echo { > site\pages\ui-ux\_meta.json
echo   "*": { >> site\pages\ui-ux\_meta.json
echo     "theme": { >> site\pages\ui-ux\_meta.json
echo       "breadcrumb": true >> site\pages\ui-ux\_meta.json
echo     } >> site\pages\ui-ux\_meta.json
echo   }, >> site\pages\ui-ux\_meta.json
echo   "index": { >> site\pages\ui-ux\_meta.json
echo     "display": "hidden" >> site\pages\ui-ux\_meta.json
echo   } >> site\pages\ui-ux\_meta.json
echo } >> site\pages\ui-ux\_meta.json

REM 11. Project (already done, but for completeness)
echo [11/10] Creating Project menu...
echo { > site\pages\project\_meta.json
echo   "*": { >> site\pages\project\_meta.json
echo     "theme": { >> site\pages\project\_meta.json
echo       "breadcrumb": true >> site\pages\project\_meta.json
echo     } >> site\pages\project\_meta.json
echo   }, >> site\pages\project\_meta.json
echo   "index": { >> site\pages\project\_meta.json
echo     "display": "hidden" >> site\pages\project\_meta.json
echo   }, >> site\pages\project\_meta.json
echo   "Task-List": "📋 Task List" >> site\pages\project\_meta.json
echo } >> site\pages\project\_meta.json

echo.
echo ================================================
echo ✅ ALL _meta.json files created successfully!
echo ================================================
echo.
echo All folders now have proper meta files with:
echo   - Hidden index files
echo   - Hidden unwanted subfolders
echo   - Clean navigation menu
echo.
echo Next: Refresh browser (Ctrl + Shift + R)
echo ================================================
pause