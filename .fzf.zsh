# Auto-completion
# # ---------------
[[ $- == *i* ]] && source "$HOME/.fzf/shell/completion.zsh" 2> /dev/null
#

#export FZF_DEFAULT_COMMAND='fd --hidden --follow -E ".git" -E "node_modules" . /etc /home'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export fzf_preview_cmd='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
alias fzf_preview='fzf --preview $fzf_preview_cmd' 

#export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

export FZF_COMPLETION_TRIGGER='\'


find-in-file() {
	grep --line-buffered --color=never -r "" * | fzf 
}
zle -N find-in-file
bindkey '^f' find-in-file
