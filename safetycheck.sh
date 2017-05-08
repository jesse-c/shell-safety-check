#
function safetycheck () {
  if [[ $1 =~ force ]]; then
    read REPLY\?"Dangerous command, continue? [y/n] "

    case "$REPLY" in 
      y|Y ) ;;
      n|N ) return 0;;
      *   ) return 1;;
    esac
  fi
}

#autoload -Uz add-zsh-hook
#add-zsh-hook preexec safetycheck