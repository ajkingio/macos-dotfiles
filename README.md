# macOS Dotfiles

A collection of dotfiles for macOS, featuring a modern development environment with AeroSpace window manager, Neovim, and various development tools.

## Requirements

- macOS
- Git
- Stow
- Homebrew

## Installation

1. Clone this repository to your home directory:
   ```bash
   git clone https://github.com/ajkingio/macos-dotfiles.git ~/macos-dotfiles
   cd ~/macos-dotfiles
   ```

2. Install dependencies using Homebrew:
   ```bash
   brew bundle
   ```

3. Stow the dotfiles:
   ```bash
   stow .
   ```

## Key Components

### Window Management (AeroSpace)

AeroSpace is configured with a comprehensive set of keybindings for efficient window management:

#### Window Navigation
| Key Binding | Action |
|-------------|---------|
| `Alt + h/j/k/l` | Focus window left/down/up/right |
| `Alt + Shift + h/j/k/l` | Move window left/down/up/right |
| `Alt + Shift + -` | Resize window smaller |
| `Alt + Shift + =` | Resize window larger |

#### Workspace Management
| Key Binding | Action |
|-------------|---------|
| `Alt + 0-9` | Switch to workspace 0-9 |
| `Alt + Shift + 0-9` | Move window to workspace 0-9 |
| `Alt + Tab` | Switch to previous workspace |
| `Alt + Shift + Tab` | Move workspace to next monitor |

#### Layout Management
| Key Binding | Action |
|-------------|---------|
| `Alt + /` | Toggle between horizontal/vertical tiling |
| `Alt + ,` | Toggle between horizontal/vertical accordion |
| `Alt + Shift + ;` | Enter service mode |
| `Alt + Shift + /` | Enter join mode |

#### Service Mode Commands
| Key Binding | Action |
|-------------|---------|
| `r` | Reset layout |
| `f` | Toggle floating/tiling layout |
| `backspace` | Close all windows except current |
| `esc` | Reload config |

### Shell Configuration (Zsh)

- Enhanced with zsh-autosuggestions
- Custom aliases for common commands
- PATH configuration for development tools
- Secret management support (commented out)

### Development Tools

The setup includes various development tools installed via Homebrew:

- **Version Control**: Git, GitHub CLI
- **Container**: Docker, Lazydocker
- **Database**: PostgreSQL, DBeaver, Lazysql
- **Terminal**: Ghostty, Tmux
- **Editor**: Neovim
- **Browser**: Qutebrowser
- **Infrastructure**: Terraform, Ansible
- **Utilities**: fzf, ripgrep, tldr

### Firefox Theme

The repository includes a modified version of the [firefox-minima](https://github.com/rockofox/firefox-minima) theme by rockofox, with customizations to always show the address bar.

To set up the Firefox theme:
1. Create a `chrome` folder in your Firefox profile directory (find it at about:support or about:profiles)
2. Copy `userChrome.css` into the `chrome` folder
3. Set `toolkit.legacyUserProfileCustomizations.stylesheets` to `true` in about:config
4. Restart Firefox

## Credits

Initial configuration inspired by [craftzdog's dotfiles](https://github.com/craftzdog/dotfiles-public).
