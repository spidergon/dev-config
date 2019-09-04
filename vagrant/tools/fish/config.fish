set -gx fish_greeting ""

# Metro virtual environment
set -g theme_display_ruby no        # Disables displaying the current ruby version
set -g theme_display_virtualenv no  # Disables displaying the current virtualenv name

# Bootstrap fisher
if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME /home/vagrant/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end

# Abbreviations
if status --is-interactive
  abbr -a !! sudo
  abbr -a g git
  abbr -a gt 'git status'
  abbr -a gd 'git diff'
  abbr -a gc 'git commit -am'
  abbr -a gac 'git add .; and git commit -am'
  abbr -a rmn 'rm -rf node_modules; and rm package-lock.json'
  abbr -a rmv 'vagrant destroy; and rm -rf .vagrant; and rm *.log'
  abbr -a path 'printf "%s\n" $PATH'
  abbr -a yup 'ncu --upgrade; and yarn install'
  abbr -a vbm 'sudo /sbin/mount.vboxsf -o uid=1000,gid=1000 vagrant /vagrant'
end
