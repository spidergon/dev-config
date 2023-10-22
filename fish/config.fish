if status is-interactive
  # Commands to run in interactive sessions can go here
  abbr -a !! sudo
  abbr -a conf 'nano ~/.config/fish/config.fish'
  abbr -a ll 'ls -lrtha'
  abbr -a lstart 'sudo /opt/lampp/lampp start'
  abbr -a lstop 'sudo /opt/lampp/lampp stop'
  abbr -a lrestart 'sudo /opt/lampp/lampp restart'
  abbr -a g git
  abbr -a gac 'git add -A; and git commit -m'
  abbr -a gc 'git commit -m'
  abbr -a gcm 'git checkout main'
  abbr -a gd 'git diff'
  abbr -a gpom 'git push -u origin main'
  abbr -a gr 'git remote'
  abbr -a gt 'git status'
  abbr -a path 'printf "%s\n" $PATH'
  abbr -a pa 'php artisan'
  abbr -a pas 'php artisan serve'
  abbr -a pp 'pnpm dev'
  abbr -a pb 'pnpm build'
  abbr -a ppp 'pnpm build; and pnpm preview'
  abbr -a po 'pnpm outdated'
  abbr -a pu 'pnpm update --latest'
  abbr -a py 'python3'
  abbr -a v 'vercel'
  abbr -a k:dev 'php -S localhost:8000 kirby/router.php'
end


set -gx fish_greeting ""

# n
set -x N_PREFIX "$HOME/n"; contains "$N_PREFIX/bin" $PATH; or set -a PATH "$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
# n end

# pnpm
set -gx PNPM_HOME "/home/chris/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# java
#set -gx JAVA_HOME "/home/chris/Tools/Java/JDK/java/bin"
#set -gx PATH "$JAVA_HOME" $PATH
# java end

# ansible
set -gx ANSIBLE_HOME "/home/chris/.local/bin"
if not string match -q -- $ANSIBLE_HOME $PATH
  set -gx PATH "$ANSIBLE_HOME" $PATH
end
# ansible end

# alias
alias pn=pnpm

# Launch starship
starship init fish | source
