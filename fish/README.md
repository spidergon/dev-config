# Fish

```bash
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish fonts-powerline git curl
```

```bash
which fish
sudo chsh -s /usr/bin/fish
sudo sed -i "s+/home/chris:/bin/bash+/home/chris:/usr/bin/fish+" /etc/passwd
```

## Starship setup

```bash
curl -fsSL https://starship.rs/install.sh | sh
```

```bash
# Add the following to the end of ~/.config/fish/config.fish
starship init fish | source
```

## Resources :

- [official website](https://fishshell.com)
- [fish-cookbook](https://github.com/jorgebucaran/fish-cookbook)
- [awesome-fish](https://github.com/jorgebucaran/awesome-fish)
- [fisher](https://github.com/jorgebucaran/fisher)
- [fish-prompt-metro](https://github.com/fishpkg/fish-prompt-metro)
- [starship](https://starship.rs)

[![Try in browser](https://cdn.rawgit.com/rootnroll/library/assets/try.svg)](https://rootnroll.com/d/fish-shell/)
