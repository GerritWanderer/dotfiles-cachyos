# CachyOS Dotfiles

Personal configuration files and settings for CachyOS Linux, managed with GNU Stow.

## Contents

### Shell Configuration
- **`.zshrc`** - Zsh configuration with Oh My Zsh setup
  - Custom aliases for Arch/CachyOS package management
  - Fish-like syntax highlighting and autosuggestions  
  - History substring search
  - Mise environment manager integration
  - Oh My Posh prompt with Tokyo Night theme

### Terminal Emulator
- **`.config/kitty/`** - Kitty terminal configuration
  - Custom key bindings and window management
  - Smart window splitting and resizing scripts
  - Font and theme configurations

### Text Editor
- **`.config/nvim/`** - Neovim configuration based on LazyVim
  - Custom keymaps and plugin configurations
  - Smart splits integration for seamless terminal/editor navigation
  - Neo-tree file explorer customizations
  - Suda plugin for sudo file editing

### Prompt Theme
- **`.config/oh-my-posh/`** - Oh My Posh prompt themes
  - Tokyo Night theme with custom color palette
  - Git status integration
  - Clean, informative prompt design

### System Configuration
- **`etc/keyd/`** - System-level key remapping
  - Maps Ctrl+W to Ctrl+Backspace for word deletion

## Key Features

### Aliases & Shortcuts
```bash
# Package management
update          # System update (pacman -Syu)
rmpkg           # Remove package with dependencies
cleanup         # Remove orphaned packages
cleanch         # Clean package cache

# Development
make            # Parallel make with all CPU cores
ninja           # Parallel ninja build
n               # Short alias for ninja

# System monitoring
jctl            # Show error messages from journal
rip             # Show recently installed packages
```

### ZSH Plugins
- Git integration
- FZF fuzzy finder
- Directory extraction utilities
- Directory environment variables (direnv)
- Smart directory jumping (z)
- Fancy Ctrl-Z for job control

### Kitty Terminal Features
- Smart window splitting and navigation
- Custom Python scripts for window management
- Seamless integration with Neovim smart-splits
- Optimized font rendering and display

## Installation

1. Clone this repository:
   ```bash
   git clone <repository-url> ~/dotfiles-cachyos
   cd ~/dotfiles-cachyos
   ```

2. Use GNU Stow to symlink configurations:
   ```bash
   # Install all configurations
   stow .
   
   # Or install specific configurations
   stow --target=~ .config
   stow --target=/ etc
   ```

3. Install required dependencies:
   ```bash
   # Oh My Zsh and plugins
   sudo pacman -S zsh oh-my-zsh zsh-syntax-highlighting zsh-autosuggestions zsh-history-substring-search

   # Terminal and editor
   sudo pacman -S kitty neovim

   # Prompt theme
   sudo pacman -S oh-my-posh

   # Key remapping
   sudo pacman -S keyd
   ```

4. Enable keyd service for system-wide key remapping:
   ```bash
   sudo systemctl enable --now keyd
   ```

## File Structure

```
.
├── .config/
│   ├── kitty/           # Kitty terminal configuration
│   ├── nvim/            # Neovim LazyVim setup
│   └── oh-my-posh/      # Prompt themes
├── etc/
│   └── keyd/            # System key remapping
├── .zshrc               # Zsh shell configuration
├── .gitignore           # Git ignore rules
└── .stow-local-ignore   # Stow ignore patterns
```

## Customization

- **Theme Colors**: Modify `.config/oh-my-posh/tokyonight.omp.json` for prompt colors
- **Shell Aliases**: Add custom aliases to `.zshrc`
- **Neovim Plugins**: Configure in `.config/nvim/lua/plugins/`
- **Kitty Keybinds**: Customize in `.config/kitty/kitty.conf`

## Dependencies

- **Shell**: Zsh with Oh My Zsh
- **Terminal**: Kitty
- **Editor**: Neovim with LazyVim
- **Prompt**: Oh My Posh
- **Package Manager**: Pacman (Arch/CachyOS)
- **Environment Manager**: Mise
- **Key Remapper**: keyd
- **Dotfile Manager**: GNU Stow