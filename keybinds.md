# Neovim Keybindings Reference

**Leader Key:** `<Space>`

## 🔧 General
| Keybind | Description |
|---------|-------------|
| `<Esc>` | Clear search highlights |
| `<leader>q` | Open diagnostic quickfix list |
| `<leader>d` | Show diagnostic float |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |

## 📁 File Management
| Keybind | Description |
|---------|-------------|
| `<leader>e` | Open Yazi file explorer |
| `\` | Yazi working directory |
| `-` | Open parent directory (Oil.nvim) |

## 🪟 Window Navigation
| Keybind | Description |
|---------|-------------|
| `<C-h>` | Move to left window |
| `<C-l>` | Move to right window |
| `<C-j>` | Move to lower window |
| `<C-k>` | Move to upper window |
| `<C-w>z` | Maximize window |
| `<C-w>_` | Maximize window vertically |
| `<C-w>\|` | Maximize window horizontally |
| `<C-w>=` | Equalize windows |

## 📑 Buffer Management
| Keybind | Description |
|---------|-------------|
| `<S-h>` | Previous buffer |
| `<S-l>` | Next buffer |
| `<leader>bp` | Pin/unpin buffer |
| `<leader>bd` | Delete buffer |
| `<leader>bo` | Close other buffers |
| `<leader>bl` | Close buffers to the left |
| `<leader>br` | Close buffers to the right |
| `<leader><leader>` | Find existing buffers (Telescope) |

## 🔍 Search (Telescope)
| Keybind | Description |
|---------|-------------|
| `<leader>sh` | Search help documentation |
| `<leader>sk` | Search keymaps |
| `<leader>sf` | Search files |
| `<leader>ss` | Search Telescope builtin |
| `<leader>sw` | Search current word |
| `<leader>sg` | Search by grep (live grep) |
| `<leader>sd` | Search diagnostics |
| `<leader>sr` | Resume last search |
| `<leader>s.` | Search recent files |
| `<leader>s/` | Search in open files |
| `<leader>sn` | Search Neovim config files |
| `<leader>sp` | Search projects |
| `<leader>sz` | Search Zoxide directories |
| `<leader>/` | Fuzzy search in current buffer |

## 🔄 Search & Replace
| Keybind | Description |
|---------|-------------|
| `<leader>sR` | Open Spectre (project-wide search & replace) |

## 🎨 Appearance
| Keybind | Description |
|---------|-------------|
| `<leader>tc` | Pick colorscheme with preview |

## 💻 Terminal
| Keybind | Description |
|---------|-------------|
| `<leader>tt` | Toggle terminal window |
| `<Esc><Esc>` | Exit terminal mode |
| `<C-/>` | Toggle Luxterm terminal manager |

## 🤖 GitHub Copilot
| Keybind | Mode | Description |
|---------|------|-------------|
| `<Tab>` | Insert | Accept Copilot suggestion |
| `<C-y>` | Insert | Accept Copilot suggestion |
| `<C-]>` | Insert | Next Copilot suggestion |
| `<M-]>` | Insert | Previous Copilot suggestion |
| `<C-x>` | Insert | Dismiss Copilot suggestion |
| `<C-\>` | Insert | Trigger Copilot suggestion |
| `<leader>cp` | Normal | Toggle Copilot on/off |
| `<leader>cs` | Normal | Copilot status |
| `<leader>cc` | Normal | Open Copilot Chat |
| `<leader>cq` | Normal | Copilot Quick Chat |
| `<leader>ca` | Normal/Visual | Copilot Actions menu |
| `<leader>ce` | Visual | Explain selected code |
| `<leader>cr` | Visual | Review selected code |
| `<leader>cf` | Visual | Fix selected code |
| `<leader>co` | Visual | Optimize selected code |
| `<leader>cd` | Visual | Generate docs for code |
| `<leader>cT` | Visual | Generate tests for code |

## 🧠 OpenCode (AI Assistant)
| Keybind | Mode | Description |
|---------|------|-------------|
| `<C-a>` | Normal/Visual | Ask opencode |
| `<C-x>` | Normal/Visual | Execute opencode action |
| `<C-.>` | Normal/Terminal | Toggle opencode |
| `go` | Normal/Visual | Add range to opencode |
| `goo` | Normal | Add line to opencode |
| `<S-C-u>` | Normal | Scroll opencode up |
| `<S-C-d>` | Normal | Scroll opencode down |
| `+` | Normal | Increment under cursor |
| `-` | Normal | Decrement under cursor |

## 🔨 LSP (Language Server)
| Keybind | Description |
|---------|-------------|
| `grn` | Rename symbol |
| `gra` | Code actions |
| `grr` | Go to references |
| `gri` | Go to implementation |
| `grd` | Go to definition |
| `grD` | Go to declaration |
| `gO` | Open document symbols |
| `gW` | Open workspace symbols |
| `grt` | Go to type definition |
| `<leader>th` | Toggle inlay hints |
| `<leader>ca` | Code actions preview |

## 🎯 Formatting
| Keybind | Description |
|---------|-------------|
| `<leader>f` | Format buffer |

## 🐛 Diagnostics & Debugging
| Keybind | Description |
|---------|-------------|
| `<leader>xx` | Toggle diagnostics (Trouble) |
| `<leader>xX` | Toggle buffer diagnostics (Trouble) |
| `<leader>xl` | LSP definitions/references (Trouble) |

## 🔀 Jump List Navigation
| Keybind | Description |
|---------|-------------|
| `<leader>o` | Portal backward (jump list) |
| `<leader>i` | Portal forward (jump list) |

## 🌿 Git
| Keybind | Description |
|---------|-------------|
| `<leader>gg` | Open LazyGit |

## ▶️ Code Execution
| Keybind | Description |
|---------|-------------|
| `<leader>R` | Run code in current file |

## 📝 Markdown
| Keybind | Description |
|---------|-------------|
| `<leader>mp` | Toggle markdown preview |

## 🔔 Notifications (Noice)
| Keybind | Description |
|---------|-------------|
| `<leader>nl` | Show last message |
| `<leader>nh` | Show notification history |
| `<leader>nd` | Dismiss notifications |

## ❓ Help & Cheatsheet
| Keybind | Description |
|---------|-------------|
| `<leader>ch` | Open keybinds cheatsheet |

## 📊 Dashboard (Startup Screen)
| Key | Description |
|-----|-------------|
| `f` | Find files |
| `r` | Recently used files |
| `g` | Find word (grep) |
| `p` | Open projects |
| `c` | Configuration |
| `l` | Lazy plugin manager |
| `u` | Update plugins |
| `h` | Cheatsheet |
| `q` | Quit Neovim |

## 💡 Tips
- Press `<leader>` and wait to see available keybindings (which-key)
- Press `?` in Telescope to see available actions
- Press `g?` in Mason to see help
- Use `:Telescope keymaps` to search all keymaps
- Use `:checkhealth` to diagnose issues
