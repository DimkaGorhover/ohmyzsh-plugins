if (( $+commands[kubectx] )); then
    __KUBECTX_COMPLETION_FILE="${ZSH_CACHE_DIR}/kubectx_completion"

    if [[ ! -f $__KUBECTX_COMPLETION_FILE ]]; then
        curl -sSL https://raw.githubusercontent.com/ahmetb/kubectx/v${KUBECTX_VERSION:-0.9.0}/completion/kubectx.zsh >! $__KUBECTX_COMPLETION_FILE
    fi

    [[ -f $__KUBECTX_COMPLETION_FILE ]] && source $__KUBECTX_COMPLETION_FILE

    unset __KUBECTX_COMPLETION_FILE
fi

alias ktx=kubectx