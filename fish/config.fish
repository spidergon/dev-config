set -gx fish_greeting ""

if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end

if status --is-interactive
  abbr -a !! sudo
  abbr -a g git
  abbr -a gc 'git commit -am'
  abbr -a gac 'git add .; and git commit -am'
  abbr -a rmn 'rm -rf node_modules; and rm package-lock.json'
  abbr -a rmv 'vagrant destroy; and rm -rf .vagrant; and rm *.log'
  abbr -a v 'vagrant'
  abbr -a tunnel 'ngrok http -host-header=rewrite dev.local:80'
end
