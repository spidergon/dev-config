set -gx fish_greeting ""

# Metro virtual environment
set -g theme_display_ruby no        # Disables displaying the current ruby version
set -g theme_display_virtualenv no  # Disables displaying the current virtualenv name

# Abbreviations
if status --is-interactive
  abbr -a !! sudo
  abbr -a conf 'nano ~/.config/fish/config.fish'
  abbr -a g git
  abbr -a gac 'git add .; and git commit -am'
  abbr -a gc 'git commit -am'
  abbr -a gcm 'git checkout master'
  abbr -a gd 'git diff'
  abbr -a gpom 'git push -u origin master'
  abbr -a gr 'git remote'
  abbr -a gt 'git status'
  abbr -a hk 'heroku'
  abbr -a nfc 'netlify function:create'
  abbr -a nd 'netlify dev'
  abbr -a ntlp 'ntl deploy --prod'
  abbr -a nup 'ncu --upgrade'
  abbr -a path 'printf "%s\n" $PATH'
  abbr -a rmn 'rm -rf node_modules; and rm package-lock.json'
  abbr -a tunnel 'ngrok http -host-header=rewrite dev.local:80'
  abbr -a vrem 'vagrant box remove ubuntu/bionic64 --box-version'
  abbr -a vup 'vagrant box update; and vagrant destroy -f; and vagrant up'
  abbr -a yard 'yarn add -D'
  abbr -a yb 'yarn build'
  abbr -a ys 'yarn start'
  abbr -a yt 'yarn test'
  abbr -a ybs 'yarn build; and yarn serve'
  abbr -a yup 'yarn upgrade-interactive --latest'
end

# Launch starship
starship init fish | source
