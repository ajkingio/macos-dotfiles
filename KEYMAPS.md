# Keymap Cheatsheet

This lists custom keybindings defined in this repo’s configs. It does not enumerate default keybindings from third‑party plugins.

**Global Notes**
- Neovim `<leader>` is `Space`.
- tmux prefix is `Ctrl+a` (the default `Ctrl+b` is unbound).

**AeroSpace (macOS window manager)**
| Keys | Action |
| --- | --- |
| `Alt + /` | Layout: tiles, toggle horizontal/vertical |
| `Alt + ,` | Layout: accordion, toggle horizontal/vertical |
| `Alt + h/j/k/l` | Focus left/down/up/right |
| `Alt + Shift + h/j/k/l` | Move window left/down/up/right |
| `Alt + Shift + -` | Resize smart -50 |
| `Alt + Shift + =` | Resize smart +50 |
| `Alt + 0-9` | Switch to workspace 0-9 |
| `Alt + Shift + 0-9` | Move window to workspace 0-9 |
| `Alt + Tab` | Workspace back and forth |
| `Alt + Shift + Tab` | Move workspace to next monitor |
| `Alt + Shift + ;` | Enter service mode |
| `Alt + Shift + /` | Enter join mode |

**AeroSpace Service Mode**
| Keys | Action |
| --- | --- |
| `r` | Reset layout and return to main |
| `f` | Toggle floating/tiling and return to main |
| `Backspace` | Close all but current window and return to main |
| `Esc` | Reload config and return to main |

**AeroSpace Join Mode**
| Keys | Action |
| --- | --- |
| `Alt + Shift + h/j/k/l` | Join with left/down/up/right and return to main |
| `Esc` | Return to main |

**Ghostty**
| Keys | Action |
| --- | --- |
| `Alt + `` | Toggle quick terminal (global) |
| `Alt + Left/Right` | Unbound |
| `Ctrl + n` | New window |
| `Ctrl + h/j/k/l` | Focus split left/down/up/right |
| `Ctrl + a`, then `h/j/k/l` | New split left/down/up/right |
| `Ctrl + a`, then `f` | Toggle split zoom |
| `Ctrl + a`, then `n` | Next tab |
| `Ctrl + a`, then `p` | Previous tab |
| `Super + r` | Reload config |

**tmux**
| Keys | Action |
| --- | --- |
| `Ctrl + a` | Prefix |
| `Prefix + r` | Reload tmux config |
| `Prefix + o` | Open current directory (macOS `open`, Linux `xdg-open`) |
| `Prefix + e` | Kill all other panes |
| `Prefix + g` | Open `lazygit` popup |
| `Ctrl + Shift + Left/Right` | Swap window left/right and follow |

**Neovim (Normal mode unless noted)**
| Keys | Action |
| --- | --- |
| `x` | Delete char without yanking |
| `<leader>p` | Paste from yank register 0 (normal/visual) |
| `<leader>P` | Paste before from yank register 0 |
| `<leader>c/C` | Change without yanking (normal/visual) |
| `<leader>d/D` | Delete without yanking (normal/visual) |
| `+` / `-` | Increment / decrement number |
| `dw` | Delete word backwards without yanking |
| `<leader>a` | Select all |
| `<leader>o` / `<leader>O` | New line below/above without comment continuation |
| `<C-m>` | Jump forward in jumplist |
| `te` | New tab |
| `<Tab>` / `<S-Tab>` | Next / previous tab |
| `ss` / `sv` | Horizontal / vertical split |
| `sh/sj/sk/sl` | Move to split left/down/up/right |
| `<C-w><Left/Right/Up/Down>` | Resize split |
| `<C-j>` | Next diagnostic |
| `<leader>r` | Replace hex with HSL |
| `<leader>i` | Toggle inlay hints |

**Neovim Behavior**
| Keys | Behavior |
| --- | --- |
| `h/j/k/l`, `+`, `-` | Rapid repeats (10+) show “Hold it Cowboy!” warning |

**Full Default + Custom Dumps**

These files include *all* keymaps (defaults + custom) dumped from your local installs. They’re long by design.

- tmux: `keymaps/tmux-list-keys.txt`
- Neovim: `keymaps/nvim-verbose-map.txt`

**Non‑Default Extracts**

These are filtered to show only non‑default bindings (heuristic for Neovim: excludes maps set from `$VIMRUNTIME`).

- tmux (non‑default): `keymaps/tmux-nondefault.txt`
- Neovim (non‑default): `keymaps/nvim-nondefault.txt`

Regenerate:
```sh
tmux list-keys -a > keymaps/tmux-list-keys.txt
nvim --headless +'set shadafile=NONE | redir => g:maps | silent verbose map | redir END | call writefile(split(g:maps, "\n"), "keymaps/nvim-verbose-map.txt") | qa'
```
