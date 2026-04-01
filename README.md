# makepkg-completion

Zsh completion plugin for [makepkg](https://man.archlinux.org/man/makepkg.8) (pacman 7.x). Designed for [Oh My Zsh](https://ohmyz.sh/).

## Features

- Complete all build options (`--clean`, `--syncdeps`, `--install`, `--force`, etc.)
- Complete all check/integrity options (`--check`, `--nocheck`, `--skipchecksums`, `--skippgpcheck`, etc.)
- Complete pacman pass-through options (`--asdeps`, `--needed`, `--noconfirm`)
- File path completion for `-p` (build script) and `--config`

## Installation

### Oh My Zsh

```bash
git clone https://github.com/<your-user>/makepkg-completion \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/makepkg-completion
```

Add to `~/.zshrc`:

```zsh
plugins=(... makepkg-completion)
```

### Manual

```zsh
source /path/to/makepkg-completion.plugin.zsh
```

## Usage

```bash
makepkg --<TAB>      # Show all options
makepkg -<TAB>       # Show short options
makepkg -p <TAB>     # Complete build script file paths
makepkg --config <TAB> # Complete config file paths
```

## Supported Options

| Category | Options |
|----------|---------|
| Build | `-A` `-c` `-C` `-d` `-D` `-e` `-f` `-g` `-i` `-L` `-m` `-o` `-p` `-r` `-R` `-s` `-S` |
| Check | `--check` `--nocheck` `--noprepare` `--skipchecksums` `--skipinteg` `--skippgpcheck` `--verifysource` |
| Package | `--sign` `--nosign` `--key` `--noarchive` `--allsource` `--packagelist` `--printsrcinfo` |
| VCS | `--holdver` |
| Pacman | `--asdeps` `--needed` `--noconfirm` `--noprogressbar` |
| General | `--config` `-h` `-V` |

## Requirements

- Zsh 5.0+
- makepkg (pacman 7.x, Arch Linux)

## License

MIT
