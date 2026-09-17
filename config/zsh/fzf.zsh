# Setup Fuzzy Finder
if which brew 2>&1 > /dev/null ; then
  if brew list fzf 2>&1 > /dev/null ; then
    source <(fzf --zsh) 
  else 
    brew install fzf
  fi
else 
  echo "Need to install brew first"
fi
