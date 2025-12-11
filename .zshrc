# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
export EDITOR=nvim
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi


export GEM_HOME="$HOME/.gem"
export GEM_PATH="$HOME/.gem"
export PATH="$GEM_HOME/bin:$PATH"
export PATH="$HOME/.gem/bin:$PATH"

export TERMINAL=ghostty
export PATH="/Applications/Ghostty.app/Contents/MacOS:$PATH"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"
 ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git zsh-syntax-highlighting zsh-autosuggestions web-search)

eval "$(starship init zsh)"
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(fzf --zsh)"

fg="#CBE0F0"
bg="#011628"
purple="#B38FF"
blue="#06BCE4"
cyan="#2CF9ED"

fg="#CBE0F0"
bg="#011628"
bg_highlight="#143652"
purple="#B388FF"
blue="#06BCE4"
cyan="#2CF9ED"

export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple}"

export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib -L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include -I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"


export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

source ~/fzf-git.sh/fzf-git.sh

show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}

alias ls="eza --color=always --icons=always -L 3 -I '.DS_Store' -I '.git'"
alias cat='bat'

export BAT_THEME=tokyonight_night

eval $(thefuck --alias)
eval $(thefuck --alias fk)

eval "$(zoxide init zsh)"

alias cd='z'
alias v="nvim"

alias utm='open /Volumes/HardDisk5TB/app/UTM.app/'
alias steam='open /Volumes/HardDisk5TB/steam/Steam.app/'

export PATH="/opt/homebrew/opt/postgresql@14/bin:$PATH"
export PATH="$PATH:/usr/local/bin"

#per giocare a doom
alias doom="chocolate-doom -iwad ~/.local/share/doom/DOOM.WAD"
eval # ZSH has a quirk where `preexec` is only run if a command is actually run (i.e # pressing ENTER at an empty command line will not cause preexec to fire). This # can cause timing issues, as a user who presses "ENTER" without running a command # will see the time to the start of the last command, which may be very large. # To fix this, we create STARSHIP_START_TIME upon preexec() firing, and destroy it # after drawing the prompt. This ensures that the timing for one command is only # ever drawn once (for the prompt immediately after it is run). zmodload zsh/parameter # Needed to access jobstates variable for STARSHIP_JOBS_COUNT # Defines a function `__starship_get_time` that sets the time since epoch in millis in STARSHIP_CAPTURED_TIME. if [[ $ZSH_VERSION == ([1-4]*) ]]; then # ZSH <= 5; Does not have a built-in variable so we will rely on Starship's inbuilt time function. __starship_get_time() { STARSHIP_CAPTURED_TIME=$(/opt/homebrew/bin/starship time) } else zmodload zsh/datetime zmodload zsh/mathfunc __starship_get_time() { (( STARSHIP_CAPTURED_TIME = int(rint(EPOCHREALTIME * 1000)) )) } fi # The two functions below follow the naming convention `prompt_<theme>_<hook>` # for compatibility with Zsh's prompt system. See # https://github.com/zsh-users/zsh/blob/2876c25a28b8052d6683027998cc118fc9b50157/Functions/Prompts/promptinit#L155 # Runs before each new command line. prompt_starship_precmd() { # Save the status, because subsequent commands in this function will change $? STARSHIP_CMD_STATUS=$? STARSHIP_PIPE_STATUS=(${pipestatus[@]}) # Calculate duration if a command was executed if (( ${+STARSHIP_START_TIME} )); then __starship_get_time && (( STARSHIP_DURATION = STARSHIP_CAPTURED_TIME - STARSHIP_START_TIME )) unset STARSHIP_START_TIME # Drop status and duration otherwise else unset STARSHIP_DURATION STARSHIP_CMD_STATUS STARSHIP_PIPE_STATUS fi # Use length of jobstates array as number of jobs. Expansion fails inside # quotes so we set it here and then use the value later on. STARSHIP_JOBS_COUNT=${#jobstates} } # Runs after the user submits the command line, but before it is executed and # only if there's an actual command to run prompt_starship_preexec() { __starship_get_time && STARSHIP_START_TIME=$STARSHIP_CAPTURED_TIME } # Add hook functions autoload -Uz add-zsh-hook add-zsh-hook precmd prompt_starship_precmd add-zsh-hook preexec prompt_starship_preexec # Set up a function to redraw the prompt if the user switches vi modes starship_zle-keymap-select() { zle reset-prompt } ## Check for existing keymap-select widget. # zle-keymap-select is a special widget so it'll be "user:fnName" or nothing. Let's get fnName only. __starship_preserved_zle_keymap_select=${widgets[zle-keymap-select]#user:} if [[ -z $__starship_preserved_zle_keymap_select ]]; then zle -N zle-keymap-select starship_zle-keymap-select; else # Define a wrapper fn to call the original widget fn and then Starship's. starship_zle-keymap-select-wrapped() { $__starship_preserved_zle_keymap_select "$@"; starship_zle-keymap-select "$@"; } zle -N zle-keymap-select starship_zle-keymap-select-wrapped; fi export STARSHIP_SHELL="zsh" # Set up the session key that will be used to store logs STARSHIP_SESSION_KEY="$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM"; # Random generates a number b/w 0 - 32767 STARSHIP_SESSION_KEY="${STARSHIP_SESSION_KEY}0000000000000000" # Pad it to 16+ chars. export STARSHIP_SESSION_KEY=${STARSHIP_SESSION_KEY:0:16}; # Trim to 16-digits if excess. VIRTUAL_ENV_DISABLE_PROMPT=1 setopt promptsubst PROMPT='$('/opt/homebrew/bin/starship' prompt --terminal-width="$COLUMNS" --keymap="${KEYMAP:-}" --status="$STARSHIP_CMD_STATUS" --pipestatus="${STARSHIP_PIPE_STATUS[*]}" --cmd-duration="${STARSHIP_DURATION:-}" --jobs="$STARSHIP_JOBS_COUNT")' RPROMPT='$('/opt/homebrew/bin/starship' prompt --right --terminal-width="$COLUMNS" --keymap="${KEYMAP:-}" --status="$STARSHIP_CMD_STATUS" --pipestatus="${STARSHIP_PIPE_STATUS[*]}" --cmd-duration="${STARSHIP_DURATION:-}" --jobs="$STARSHIP_JOBS_COUNT")' PROMPT2="$(/opt/homebrew/bin/starship prompt --continuation)"

export PATH="$PATH:/Users/samuelediaferio/Desktop/to-do_list/"
export PATH="$PATH:$HOME/bin"
# which shellcheck
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

export PATH="/Applications/Wireshark.app/Contents/MacOS:$PATH"

export PATH="$HOME/.npm-global/bin:$PATH"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

if [ -z :$TMUX ]; then
  fastfetch
else 
  if [ -z "$TMUX_NEW_SESSION" ]; then
    fastfetch
    export TMUX_NEW_SESSION=1
  fi
fi
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/samuelediaferio/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
export PATH="$PATH:/opt/homebrew/Caskroom/flutter/latest/flutter/bin"

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export PATH="$HOME/go/bin:$PATH"

# Load Angular CLI autocompletion.
source <(ng completion script)

export OLLAMA_MODELS="/Volumes/HardDisk5TB/ollama/"
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"

function clear() {
  command clear
  echo "(-_-)"
}

if [[ -z "$TMUX" ]]; then
  TMOUT=10
  TRAPALRM() {
    ghostty +boo
  }
fi

export PATH="/opt/homebrew/opt/ruby/bin/:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"

export PATH="/opt/homebrew/bin:$PATH"

fpath=(/opt/homebrew/share/zsh/site-functions $fpath)
autoload -Uz compinit
compinit
