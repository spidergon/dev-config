## Fira Code Font

- [Install Fira Code](https://medium.com/@qjli/daily-dev-tips-96-visual-studio-code-how-to-enable-this-new-sexy-fira-code-font-89bafbfa245f)
- [Wiki](https://github.com/tonsky/FiraCode/wiki)

```sh
sudo apt install fonts-firacode
```

## Extensions

_**Note:** [Unix-like systems](https://en.wikipedia.org/wiki/Operating_system#Unix_and_Unix-like_operating_systems) only._

1. Export your extensions to a shell file:

```sh
code --list-extensions | sed -e 's/^/code --install-extension /' > extensions.sh
```

2. Verify your extensions installer file:

```sh
less extensions.sh
```

### Install your extensions (optional)

Run your `extensions.sh` using [Bash](https://www.gnu.org/software/bash/) command:

```sh
bash extensions.sh
```
