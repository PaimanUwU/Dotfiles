# 🚀 Master Cheat Sheet (2026 - Fish Edition)

**Greeting:** `>w<` | **Shell:** 🐟 Fish | **Vi Mode:** Active | **Theme:** Catppuccin Mocha

---

## 🐚 Fish Core & Navigation

### 📂 Navigation & Abbreviations
| Action | Command / Abbr | Notes |
| :--- | :--- | :--- |
| **Open Yazi** | `y` | Syncs `cwd` on exit + Bar cursor fix |
| **Quick Jump** | `z [folder]` | Zoxide: jumps to frequent folders |
| **Go Home** | `h` | `cd ~` |
| **Auto-CD** | `[path] + Enter` | Just type a folder name to enter it |
| **Back/Forward** | `..` / `...` | Quick jumps up the directory tree |
| **Dir History** | `Alt + ← / →` | Move back/forward through folder history |
| **Hist Picker** | `prevd` / `nextd` | List and jump through directory stack |
| **Modern LS** | `ls` | `eza` with Git & Icons |
| **Folder Tree** | `lt` | Expands to `ezatree --level=%cursor` |

### ⌨️ Completion & History Keybindings
| Key | Action | Result |
| :--- | :--- | :--- |
| **`Tab`** | **Tab Complete** | Shows options with descriptions (press again to browse) |
| **`Ctrl + R`** | **Interactive History** | Search through all previous commands |
| **`→` or `Ctrl + F`** | **Accept Suggestion** | Accepts the grey "ghost text" suggestion |
| **`Alt + →`** | **Partial Accept** | Accepts only the next word of the suggestion |
| **`Ctrl + Space`** | **Literal Space** | Keeps abbreviation short (prevents expansion) |
| **`Ctrl + P / N`** | **History Search** | Cycle through matching previous commands |

---

## 💻 Developer Workflow
| Action | Abbr / Alias | Notes |
| :--- | :--- | :--- |
| **Edit Config** | `fishconfig` | Points to your Dotfiles |
| **Reload Config** | `sourcefish` | Hot-reloads `config.fish` |
| **Neovim** | `v` | Uses Vi mode cursor logic |
| **VS Codium** | `code` | |
| **Cat (Bat)** | `cat` | High-fidelity previews |
| **Clear Screen** | `c` | Expands to `clear` |
| **View PATH** | `path` | Line-by-line breakdown |
| **Check Shell** | `whatshell` | Confirms you are in Fish! `>w<` |
| **Public IP** | `myip` | |

---

## 🌿 Git Simplified
| Action | Abbr | Auto-Cursor Behavior |
| :--- | :--- | :--- |
| **Status** | `gs` | `git status` |
| **Add All** | `ga` | `git add` |
| **Commit** | `gc` | Jumps cursor inside: `git commit -m "%cursor"` |
| **Push** | `gp` | `git push` |
| **Log** | `gl` | Visual graph with relative time |

---

## 🔐 Advanced Utility & Privacy
| Action | Command | Result |
| :--- | :--- | :--- |
| **Private Mode** | `fish -P` | **Incognito:** No history saved to disk |
| **Refresh Tabs** | `fish_update_completions` | Updates Tab-previews for all software |
| **Web Config** | `fish_config` | Opens browser-based GUI for themes |
| **Format Script** | `fish_indent -w file.fish` | Auto-formats Fish script syntax |
| **Home Server** | `lab` | New Tmux window + SSH to home server |
| **Nuke History** | `nuke-history` | Wipes SQL history + `>w<` |
| **Cheat Sheet** | `cheats` | Renders this file in `glow` |

---

## 💡 Custom Pro-Tips
* **Smart Colors:** Commands turn **Red** if mistyped and **Blue** if valid. Valid paths are **Underlined**.
* **The "Space" Rule:** Start any command with a **leading space** to keep it out of your history.
* **Compatibility:** Fish is **not POSIX-compliant**. Always use `#!/bin/bash` at the top of scripts.
* **Vi Mode:** `|` is Insert mode, `█` is Normal mode (hit `Esc` to toggle). Use `v` in normal mode for Visual.

---

*Last Updated: April 18, 2026*
