# 🌙 Neovim Master Cheat Sheet (2026)

**Flavor:** Lua-based Custom Config
**Theme:** Catppuccin Mocha

---

## 📋 Clipboard & Editing
| Action | Keybinding |
| --- | --- |
| **Paste (No Overwrite)** | `p` (in Visual Mode) |
| **Delete to Black Hole** | `"_d` |
| **Copy to System Clipboard** | `"+y` |
| **Select All** | `ggVG` |
| **Undo / Redo** | `u` / `Ctrl + r` |

## 📂 Folding (Keep it Tidy)
| Action | Keybinding |
| --- | --- |
| **Toggle Fold** | `za` |
| **Open Current Fold** | `zo` |
| **Close Current Fold** | `zc` |
| **Open All Folds** | `zR` |
| **Close All Folds** | `zM` |
| **Jump to Next Fold** | `zj` |

## 🧭 Navigation & Windows
| Action | Keybinding |
| --- | --- |
| **Navigate Panes** | `Ctrl + h/j/k/l` (Shared with Tmux) |
| **Go to Definition** | `gd` |
| **Hover / Documentation** | `K` |
| **File Explorer** | `:NvimTreeToggle` or `:Oil` |
| **Find Files (Telescope)** | `Leader + ff` |
| **Live Grep (Search Text)** | `Leader + fg` |

## 🚀 Custom Workflow
- **LazyVim / Plugins:** Manage with `:Lazy`
- **LSP Status:** Check with `:LspInfo`
- **Folds:** Automatically saved/loaded via `autocmds.lua`
- **Cursor:** Automatically resets to a bar when exiting back to Zsh/Yazi.

---

*Last Updated: April 2026*
