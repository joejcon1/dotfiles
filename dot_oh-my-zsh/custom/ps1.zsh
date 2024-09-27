autoload -Uz vcs_info # enable vcs_info    
precmd () { vcs_info } # always load before displaying the prompt    
zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)' # git(main)    
NEWLINE=$'\n'    
PROMPT='%n@%F{red}%m%f %F{green}%/%f$vcs_info_msg_0_ ${NEWLINE}$ ' 
