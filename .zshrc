# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/chasephilips/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_DISABLE_COMPFIX="true"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_UPDATE_PROMPT="true"
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
#
#
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/chasephilips/Projects/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(
  git
  emacs
)

source $ZSH/oh-my-zsh.sh

# User configuration
#
# export MANPATH="/usr/local/man:$MANPATH"

# export LANG=en_US.UTF-8

export ARCHFLAGS="-arch x86_64"

# Example aliases
eval "$(fnm env --multi)"
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
export PATH="/usr/local/opt/erlang/lib/erlang/bin/erl:$PATH"

. $HOME/.asdf/asdf.sh

alias l="ls -lGFh"
alias ll="ls -alGFh"
alias ..="cd .."

alias gs="git status"
alias ga="git add"
alias gd="git diff"
alias gc="git commit -m"
alias gp="git push"

alias mixs="mix phx.server"
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias sshroast="ssh web@167.99.110.56"
alias sshstokes="ssh root@198.211.106.48 -p 4242"
alias cdbackend="cd ~/Projects/lknvball"
alias cdfrontend="cd ~/Projects/lkn-frontend"
alias cdj="cd ~/joydrive"
alias cdjoydrive="cd ~/joydrive"

alias iexs="iex -S mix"
alias mixs="mix phx.server"

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# export FACEBOOK_APP_ID="169751080982184"
# export FACEBOOK_APP_SECRET="60f3f01815c64cd4ff36e385504483cb"
export FACEBOOK_APP_ID="408941523455852"
export FACEBOOK_APP_SECRET="12b5883354453df6453886d63fa00c7d"
export STRIPE_SECRET="sk_test_51HA60NJG8jWqtULrsv00acJtCmmg7hYmrpUaAzzUZNGtmruXkYIJOyGsb8VlRg0Zl2bYoYMHbWLPI2omW5IN8fZX00TG2YhDCR"
export PG_USERNAME="chase"
export PG_PWD="abc123"

## Exports needed for installs
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export KERL_CONFIGURE_OPTIONS="--disable-debug --disable-silent-rules --without-javac --enable-shared-zlib --enable-dynamic-ssl-lib --enable-hipe --enable-sctp --enable-smp-support --enable-threads --enable-kernel-poll --enable-wx --enable-darwin-64bit --with-ssl=/usr/local/Cellar/openssl/1.1"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
