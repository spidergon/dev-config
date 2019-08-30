set -gx fish_greeting ""
set -gx PATH $PATH ~/.yarn/bin

# Metro virtual environment
#set -g theme_display_ruby no        # Disables displaying the current ruby version
#set -g theme_display_virtualenv no  # Disables displaying the current virtualenv name

# Bootstrap fisher
if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
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
  abbr -a vrem 'vagrant box remove ubuntu/bionic64 --box-version'
  abbr -a vup 'vagrant box update; and vagrant destroy -f; and vagrant up'
  abbr -a path 'printf "%s\n" $PATH'
  abbr -a yup 'ncu --upgrade; and yarn install'
  abbr -a tunnel 'ngrok http -host-header=rewrite dev.local:80'
  abbr -a p python
  abbr -a p3 python3
  abbr -a penv 'python3 -m venv env'
  abbr -a pipup 'python -m pip install --upgrade pip'
end
