# development environment
set -gx EDITOR (type -p nvim)
set -gx VIRTUAL_ENV_DISABLE_PROMPT 1

# GPG stuff
set -gx GPG_TTY (tty)

# pager stuff
set -gx PAGER less

# PATH stuff
set PATH $PATH \
  $DOTFILES/bin \
  ~/.nodejs/{node,yarn}/bin \
  ./node_modules/.bin

# macOS specific vars
if test (uname) = 'Darwin'
  set PATH $PATH ~/Library/Python/*/bin
end
