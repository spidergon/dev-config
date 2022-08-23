# NodeJS

## n

```bash
curl -L https://bit.ly/n-install | SHELL=fish bash
```

## pnpm

```bash
curl -fsSL https://get.pnpm.io/install.sh | SHELL=fish bash
```

## fish config

```bash
# n
set -x N_PREFIX "$HOME/n"; contains "$N_PREFIX/bin" $PATH; or set -a PATH "$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
# n end

# pnpm
set -gx PNPM_HOME "/home/chris/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
alias pn=pnpm
# pnpm end
```

## Resources :

- [n-install](https://github.com/mklement0/n-install)
- [pnpm](https://pnpm.ml/installation)
