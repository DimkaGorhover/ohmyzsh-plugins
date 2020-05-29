if (( $+commands[kompose] )); then
    __KOMPOSE_COMPLETION_FILE="${ZSH_CACHE_DIR}/kompose_completion"

    if [[ ! -f $__KOMPOSE_COMPLETION_FILE ]]; then
        kompose completion zsh >! $__KOMPOSE_COMPLETION_FILE
    fi

    [[ -f $__KOMPOSE_COMPLETION_FILE ]] && source $__KOMPOSE_COMPLETION_FILE

    unset __KOMPOSE_COMPLETION_FILE
fi

