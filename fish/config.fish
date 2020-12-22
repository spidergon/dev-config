set -gx fish_greeting ""

# Metro virtual environment
set -g theme_display_ruby no        # Disables displaying the current ruby version
set -g theme_display_virtualenv no  # Disables displaying the current virtualenv name

# Abbreviations
if status --is-interactive
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
  abbr -a hk 'heroku'
  abbr -a ndeploy 'netlify deploy --prod'
  abbr -a nd 'netlify dev'
  abbr -a ndl 'netlify dev --live'
  abbr -a nfc 'netlify functions:create'
  abbr -a ndx 'netlify dev:exec '
  abbr -a nup 'ncu --upgrade'
  abbr -a path 'printf "%s\n" $PATH'
  abbr -a rmn 'rm -rf node_modules; and rm package-lock.json'
  abbr -a tunnel 'ngrok http -host-header=rewrite dev.local:80'
  abbr -a v 'vercel'
  abbr -a vrem 'vagrant box remove ubuntu/bionic64 --box-version'
  abbr -a vup 'vagrant box update; and vagrant destroy -f; and vagrant up'
  abbr -a yard 'yarn add -D'
  abbr -a yb 'yarn build'
  abbr -a yd 'yarn dev'
  abbr -a yt 'yarn test'
  abbr -a ybs 'yarn build; and yarn serve'
  abbr -a yup 'yarn upgrade-interactive --latest'
  abbr -a c 'composer'
  abbr -a cr 'composer require'
  abbr -a crw 'composer require wpackagist-plugin/'
  abbr -a k:dev 'php -S localhost:8080 kirby/router.php'
end

# Launch starship
starship init fish | source
