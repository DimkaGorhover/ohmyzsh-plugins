if (( $+commands[kubens] )); then
    __KUBENS_COMPLETION_FILE="${ZSH_CACHE_DIR}/kubens_completion"

    if [[ ! -f $__KUBENS_COMPLETION_FILE ]]; then
        curl -sSL https://raw.githubusercontent.com/ahmetb/v${KUBECTX_VERSION:-0.9.0}/completion/kubens.zsh >! $__KUBENS_COMPLETION_FILE
    fi

    [[ -f $__KUBENS_COMPLETION_FILE ]] && source $__KUBENS_COMPLETION_FILE

    unset __KUBENS_COMPLETION_FILE
fi

alias kns=kubens
