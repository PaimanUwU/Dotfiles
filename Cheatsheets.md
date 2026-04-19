█▀▀ █░█ █▀▀ ▄▀█ ▀█▀ █▀ █░█ █▀▀ █▀▀ ▀█▀
█▄▄ █▀█ ██▄ █▀█ ░█░ ▄█ █▀█ ██▄ ██▄ ░█░


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
| **Modern LS** | `ls` | `eza` with Git & Icons |
| **Folder Tree** | `lt` | Expands to `ezatree --level=%cursor` |

### ⌨️ Completion & History Keybindings
| Key | Action | Result |
| :--- | :--- | :--- |
| **`Tab`** | **Tab Complete** | Shows options with descriptions (press again to browse) |
| **`Ctrl + R`** | **Interactive History** | Search through all previous commands |
| **`→` or `Ctrl + F`** | **Accept Suggestion** | Accepts the grey "ghost text" suggestion |
| **`Alt + →`** | **Partial Accept** | Accepts only the next word of the suggestion |

---

## 🌿 Git & Lazygit Workflow
| Action | Abbr / Key | Notes |
| :--- | :--- | :--- |
| **Open Lazygit** | `lg` | The ultimate TUI for Git (press `q` to exit) |
| **Status** | `gs` | `git status` |
| **Add All** | `ga` | `git add` |
| **Commit** | `gc` | Jumps cursor inside: `git commit -m "%cursor"` |
| **Push** | `gp` | `git push` |
| **Log** | `gl` | Visual graph with relative time |

### 🛠 Lazygit Internal Essentials
| Key | Action | Context |
| :--- | :--- | :--- |
| **`1` - `4`** | **Jump Pane** | Quickly switch between Status, Files, Branches, Commits |
| **`[` / `]`** | **Cycle Tabs** | Move between Local/Remote branches or Reflog |
| **`Space`** | **Stage/Unstage** | Toggle staging for a file or a single line (hunk) |
| **`Enter`** | **Stage Hunks** | Zoom into a file to stage lines individually |
| **`c`** | **Commit** | Opens the commit popup (Tab to switch Summary/Desc) |
| **`P`** | **Push** | Shift + P to push your branch to origin |
| **`n`** | **New Branch** | Creates a new branch from current head |
| **`M`** | **Merge** | Open the merge menu for the selected branch |
| **`?`** | **Keybinds** | Shows all commands specific to the current pane |

---

## 💻 Developer Workflow
| Action | Abbr / Alias | Notes |
| :--- | :--- | :--- |
| **Edit Config** | `fishconfig` | Points to your Dotfiles |
| **Reload Config** | `sourcefish` | Hot-reloads `config.fish` |
| **Neovim** | `v` | Uses Vi mode cursor logic |
| **Cat (Bat)** | `cat` | High-fidelity previews |
| **Check Shell** | `whatshell` | Confirms you are in Fish! `>w<` |
| **Home Server** | `lab` | New Tmux window + SSH to home server |

---

## 💡 Custom Pro-Tips
* **Smart Colors:** Commands turn **Red** if mistyped and **Blue** if valid. Valid paths are **Underlined**.
* **The "Space" Rule:** Start any command with a **leading space** to keep it out of your history.
* **Vi Mode:** `|` is Insert mode, `█` is Normal mode (hit `Esc` to toggle). Use `v` in normal mode for Visual.

---

*Last Updated: April 19, 2026*
