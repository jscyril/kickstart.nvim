# Neovim Keybindings Reference

**Leader Key:** `<Space>`

## 🔧 General
| Keybind | Description |
|---------|-------------|
| `<Esc>` | Clear search highlights |
| `<leader>q` | Open diagnostic quickfix list |

## 📁 File Management
| Keybind | Description |
|---------|-------------|
| `<leader>e` | Toggle Neo-tree file explorer |
| `-` | Open parent directory (Oil.nvim) |

## 🪟 Window Navigation
| Keybind | Description |
|---------|-------------|
| `<C-h>` | Move to left window |
| `<C-l>` | Move to right window |
| `<C-j>` | Move to lower window |
| `<C-k>` | Move to upper window |

## 📑 Buffer Management
| Keybind | Description |
|---------|-------------|
| `<S-h>` | Previous buffer |
| `<S-l>` | Next buffer |
| `<leader>bp` | Pin/unpin buffer |
| `<leader>bd` | Delete buffer |
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
| `<leader>/` | Fuzzy search in current buffer |

## 🔄 Search & Replace
| Keybind | Description |
|---------|-------------|
| `<leader>sr` | Open Spectre (project-wide search & replace) |

## 🎨 Appearance
| Keybind | Description |
|---------|-------------|
| `<leader>tc` | Pick colorscheme with preview |

## 💻 Terminal
| Keybind | Description |
|---------|-------------|
| `<leader>tt` | Toggle terminal window |
| `<Esc><Esc>` | Exit terminal mode |

## 🤖 GitHub Copilot
| Keybind | Mode | Description |
|---------|------|-------------|
| `<C-l>` | Insert | Accept Copilot suggestion |
| `<leader>cc` | Normal | Open Copilot Chat |
| `<leader>ct` | Normal | Toggle Copilot Chat |
| `<leader>ce` | Visual | Explain selected code |
| `<leader>cr` | Visual | Review selected code |
| `<leader>cf` | Visual | Fix selected code |
| `<leader>co` | Visual | Optimize selected code |
| `<leader>ca` | Visual | Ask Copilot about selected code |

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
| `<leader>o` | Toggle symbols outline |

## 🌿 Git
| Keybind | Description |
|---------|-------------|
| `<leader>gg` | Open LazyGit |

## ▶️ Code Execution
| Keybind | Description |
|---------|-------------|
| `<leader>r` | Run code in current file |

## 📝 Markdown
| Keybind | Description |
|---------|-------------|
| `<leader>mp` | Toggle markdown preview |

## 📊 Dashboard (Startup Screen)
| Key | Description |
|-----|-------------|
| `u` | Update plugins (Lazy) |
| `f` | Find files |
| `p` | Open projects |

## 💡 Tips
- Press `<leader>` and wait to see available keybindings (which-key)
- Press `?` in Telescope to see available actions
- Press `g?` in Mason to see help
- Use `:Telescope keymaps` to search all keymaps
- Use `:checkhealth` to diagnose issues
