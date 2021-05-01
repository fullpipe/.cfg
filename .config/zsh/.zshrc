for file in ~/.{path,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


autoload -Uz compinit; compinit

setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
unsetopt HIST_SAVE_NO_DUPS       # Write a duplicate event to the history file

fpath=($HOME/.config/zsh/ $fpath)

eval "$(starship init zsh)"
#autoload -Uz prompt ; prompt


setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

#bindkey -v
export KEYTIMEOUT=1
bindkey "^R" history-incremental-search-backward

