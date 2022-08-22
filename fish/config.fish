if status is-interactive
  # Commands to run in interactive sessions can go here
  abbr -a !! sudo
  abbr -a conf 'nano ~/.config/fish/config.fish'
  abbr -a g git
  abbr -a gac 'git add -A; and git commit -m'
  abbr -a gc 'git commit -m'
  abbr -a gcm 'git checkout main'
  abbr -a gd 'git diff'
  abbr -a gpom 'git push -u origin main'
  abbr -a gr 'git remote'
  abbr -a gt 'git status'
  abbr -a path 'printf "%s\n" $PATH'
  abbr -a pd 'pnpm dev'
  abbr -a pb 'pnpm build'
  abbr -a pbp 'pnpm build; and pnpm preview'
  abbr -a po 'pnpm outdated'
  abbr -a pu 'pnpm update --latest'
  abbr -a v 'vercel'
  abbr -a k:dev 'php -S localhost:8080 kirby/router.php'
end

set -gx fish_greeting ""

# Launch starship
starship init fish | source
