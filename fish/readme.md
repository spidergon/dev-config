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

## Resources :

- [fish-cookbook](https://github.com/jorgebucaran/fish-cookbook)
- [fisher](https://github.com/jorgebucaran/fisher)
- [fish-prompt-metro](https://github.com/fishpkg/fish-prompt-metro)
