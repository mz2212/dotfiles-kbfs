# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'Specify: %d'
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' ignore-parents pwd directory
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

# Exports for wayland. Probably a bad idea if you aren't actually using wayland. I wonder how to check for that.
# Eh... Probably won't break things.
export CLUTTER_BACKEND=wayland
#export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1 # This one's useful anyways.

# Exports for vs-code Ugh. This too has to be portable...
hash trash-cli 2>/dev/null && export ELECTRON_TRASH=trash-cli # I don't understand this too well. I've never heard of `hash` before. https://stackoverflow.com/questions/592620/how-can-i-check-if-a-program-exists-from-a-bash-script

# Exports to make man(1) put out some nice output when used in conjunction with "-Tpdf"
export MANROFFOPT="-fH" # "-fH" is a groff option to set the default font family to helvetica

ZHOME="$HOME/.zhome"

# Prompt setup: if file exists, source it
[[ -f ${ZHOME}/prompt.zsh ]] && source ${ZHOME}/prompt.zsh

# I figure that the good 'ol ~/bin could be useful too.
[[ -d ${HOME}/bin ]] && export PATH="$PATH:$HOME/bin"
[[ -d ${HOME}/.bin ]] && export PATH="$PATH:$HOME/.bin" # Suddenly, home isn't a word anymore.

# Aliases
alias ls='ls --color=auto'
alias la='ls -lah'
alias ll='ls -lh'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# Ugh. Have to make this portable. Check if the directory exists BEFORE fucking with $PATH
[[ -d ${HOME}/.rvm/bin ]] && export PATH="$PATH:$HOME/.rvm/bin"
# bleh. rustup does the same nonsense.
[[ -d ${HOME}/.cargo/bin ]] && export PATH="$PATH:$HOME/.cargo/bin"
