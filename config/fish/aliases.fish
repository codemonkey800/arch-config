# Quick access to certain directories via commands
alias dotfiles '
  if status -c;
    echo "$DOTFILES";
  else;
    cd "$DOTFILES";
  end
'
alias tmpd '
  if status -c;
    echo ~/var/tmp;
  else;
    cd ~/var/tmp;
  end
'

# Aliases
alias cpu-temps 'watch -n 0.5 "sensors -f | grep Core"'
alias dokku 'ssh dev dokku --'
alias exists 'type -q'
alias g 'git'
alias info 'info --vi-keys'
alias ll 'l -l'
alias lns 'ln -svf'
alias lsof-del 'lsof +c 0
  | grep -w DEL
  | pawk \'"{}: {}".format(f[0], f[-1:])\'
  | sort -u
'
alias paths 'echo $PATH | tr " " \n'
alias public-ip 'curl -q "http://ipinfo.io/ip"'
alias r 'rm -rf'
alias re "sudo -E $EDITOR"
alias rr 'sudo rm -rf'
alias wh 'type -P'
alias ya 'yaourt'
alias yag 'yaourt -G'
alias yaq 'yaourt -Q'
alias yar 'yaourt -Rscun'
alias yas 'yaourt -S'

# Conditional Aliases

# Convenience function for conditionally
# setting aliases.
# Usage: __aliasif <alias> <command>
function __aliasif
  if exists (echo $argv[2] | pawk f[0])
    alias $argv[1] $argv[2]
  end
end

__aliasif apm 'apm-beta'
__aliasif atom 'atom-beta'
__aliasif chrome 'google-chrome-unstable'
__aliasif copy 'rsync -aP'
__aliasif g 'hub'
__aliasif git "hub"
__aliasif lsports 'netstat -pelnut ^ /dev/null'
__aliasif move 'rsync -aP --remove-source-files'
__aliasif npmls 'npm ls --depth=0'
__aliasif pdflatex 'pdflatex -interaction=nonstopmode -shell-escape'
__aliasif top 'htop'
__aliasif tree 'tree -aC'

functions -e __aliasif

