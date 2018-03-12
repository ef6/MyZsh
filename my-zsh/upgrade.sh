
# Use colors, but only if connected to a terminal, and that terminal
# supports them.
if which tput >/dev/null 2>&1; then
    ncolors=$(tput colors)
fi
if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
  RED="$(tput setaf 1)"
  GREEN="$(tput setaf 2)"
  YELLOW="$(tput setaf 3)"
  BLUE="$(tput setaf 4)"
  BOLD="$(tput bold)"
  NORMAL="$(tput sgr0)"
else
  RED=""
  GREEN=""
  YELLOW=""
  BLUE=""
  BOLD=""
  NORMAL=""
fi

git_pull(){
  printf "${BLUE}%s${NORMAL}\n" "Updating $1"
  cd "$1"
  git pull --rebase --stat origin master || {
    printf "${RED}%s${NORMAL}\n" 'There was an error updating. Try again later?'
  }
}

git_pull "$ZSH"
git_pull "$ZSH/custom/plugins/zsh-autosuggestions"
git_pull "$ZSH/custom/plugins/zsh-syntax-highlighting"
git_pull "$ZSH/custom/themes/spaceship-prompt"
