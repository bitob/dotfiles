# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="random"
ZSH_THEME="jonathan"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  aliases
#  autoenv
#  battery
  bgnotify
  catimg
  chucknorris
  colored-man-pages
  colorize
  command-not-found
#  common-aliases
  compleat
  copybuffer
  copyfile
  copypath
  cp
#  direnv
  emoji
  extract
  fast-syntax-highlighting
  fzf
  # git-auto-fetch
#  gitignore
#  git-prompt
  history-substring-search
  hitchhiker
  isodate
  jsontools
#  jump
  kate
  lol
#  last-working-dir
#  magic-enter
  multipass
#  per-directory-history
  pre-commit
#  profiles
  python
  qrcode
  rand-quote
  rsync
  rust
  safe-paste
  scd
  screen
#  shell-proxy
#  shrink-path
#  singlechar
#  ssh-agent
#  starship
#  sudo
  systemadmin
  systemd
#  term_tab
  thefuck
  themes
  tig
#  timer
  tmux
  tmux-cssh
  universalarchive
  urltools
  virtualenv
  web-search
  zbell
  zoxide
  zsh-autocomplete
  zsh-autosuggestions
  # zsh_codex
  zsh-interactive-cd
  zsh-syntax-highlighting
#  zsh-navigation-tools
)
# bindkey '^X' create_completion # zsh_codex completion

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Start of custom configuration
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/bash_me_daddy:$PATH"
export PATH="$HOME/.local/share/pipx/venvs/openai:$PATH"

# alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
function rfm-cd {
    # create a temp file and store the name
    tempfile="$(mktemp -t tmp.XXXXXX)"

    # run rfm and ask it to output the last path into the
    # temp file
    rfm --choosedir="$tempfile"

    # if the temp file exists read and the content of the temp
    # file was not equal to the current path
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        # change directory to the path in the temp file
        cd -- "$(cat "$tempfile")"
    fi

    # it's not super necessary to have this line for deleting
    # the temp file since Linux should handle it on the next
    # boot
    rm -f -- "$tempfile"
}

# The lol plugin aliases tldr to less, but I use the tldr tool so I cannot use that alias
unalias tldr

alias vim="nvim"
alias v="vim"
alias nv="nvim"

alias rfm="rfm-cd"
alias r="rfm"

alias ls='eza'
alias ll='eza --icons -l'
alias la='ll -a'

alias grep='rg'

alias cd='z'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias ..='cd..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias gac="git commit -a -m "
alias gs="git status"
alias gsu="git status --untracked-files"
alias gccd='foo(){ git clone "$1"; cd "$1" }; foo '
alias lg='lazygit'
alias gg='lazygit'

alias hs='history | grep'

alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '
alias myip="curl http://ipecho.net/plain; echo"

alias dodo="python ~/hyper-shell/dodo.py"

alias fucking="sudo"
alias FUCKING="sudo"
alias fuck="sudo"
alias FUCK="sudo"
alias fck="sudo"
alias fckn="sudo"
alias please="sudo"
alias pls="sudo"


export NIX_REMOTE=daemon

export NIXPKGS_ALLOW_UNFREE=1

export CPM_SOURCE_CACHE=$HOME/.cache/CPM

# This function is triggered when the terminal window is resized
TRAPWINCH () {
  # Create a string of equals signs that is as long as the width of the terminal
  # This could be used to print a dividing line that spans the entire width of the terminal
  BAR=$(printf '=%.0s' {1..$COLUMNS})
}

## Directly execute "sudo !!" instead of expanding it first
#expand-and-accept() {
#    if [[ $BUFFER == "sudo !!" ]]; then
#        LBUFFER="sudo $(fc -ln -1)"
#    fi
#    zle .accept-line
#}
#zle -N expand-and-accept
#bindkey '^M' expand-and-accept

# Directly execute all the bang-bang lines
execute-with-bang-bang() {
    local expanded_command
    if [[ $LBUFFER =~ '!!' ]]; then
        expanded_command=$(fc -ln -1)
        LBUFFER=${LBUFFER//\!\!/$expanded_command}
    fi
    zle .accept-line
}
zle -N execute-with-bang-bang
bindkey '^M' execute-with-bang-bang

# Source all files from .work_env directory
if [ -d "$HOME/.work_env" ]; then
    # Source every file in the directory
    for file in "$HOME/.work_env"/*; do
        if [ -f "$file" ]; then
            source "$file"
        fi
    done
fi

eval "$(srgn --completions zsh)"

fortune -cs | sed "s/%//" | cowsay
#neofetch

# setxkbmap -layout decode -variant de
