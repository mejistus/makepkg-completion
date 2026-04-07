# makepkg-completion

[makepkg](https://man.archlinux.org/man/makepkg.8) (pacman 7.x) 的 Zsh 补全插件，适用于 [Oh My Zsh](https://ohmyz.sh/)。

## 功能

- 补全所有构建选项（`--clean`、`--syncdeps`、`--install`、`--force` 等）
- 补全所有检查/完整性选项（`--check`、`--nocheck`、`--skipchecksums`、`--skippgpcheck` 等）
- 补全 pacman 透传选项（`--asdeps`、`--needed`、`--noconfirm`）
- 为 `-p`（构建脚本）和 `--config` 提供文件路径补全

## 安装

### Oh My Zsh

```bash
git clone https://github.com/mejistus/makepkg-completion \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/makepkg-completion
```

在 `~/.zshrc` 中添加：

```zsh
plugins=(... makepkg-completion)
```

### 手动安装

```zsh
source /path/to/makepkg-completion.plugin.zsh
```

## 使用

```bash
makepkg --<TAB>        # 显示所有选项
makepkg -<TAB>         # 显示短选项
makepkg -p <TAB>       # 补全构建脚本文件路径
makepkg --config <TAB> # 补全配置文件路径
```

## 支持的选项

| 类别 | 选项 |
|------|------|
| 构建 | `-A` `-c` `-C` `-d` `-D` `-e` `-f` `-g` `-i` `-L` `-m` `-o` `-p` `-r` `-R` `-s` `-S` |
| 检查 | `--check` `--nocheck` `--noprepare` `--skipchecksums` `--skipinteg` `--skippgpcheck` `--verifysource` |
| 打包 | `--sign` `--nosign` `--key` `--noarchive` `--allsource` `--packagelist` `--printsrcinfo` |
| VCS | `--holdver` |
| Pacman | `--asdeps` `--needed` `--noconfirm` `--noprogressbar` |
| 通用 | `--config` `-h` `-V` |

## 要求

- Zsh 5.0+
- makepkg（pacman 7.x，Arch Linux）

## 许可证

MIT
