if (( $+commands[kubeadm] )); then
    __KUBEADM_COMPLETION_FILE="${ZSH_CACHE_DIR}/kubeadm_completion"

    if [[ ! -f $__KUBEADM_COMPLETION_FILE ]]; then
        kubeadm completion zsh >! $__KUBEADM_COMPLETION_FILE
    fi

    [[ -f $__KUBEADM_COMPLETION_FILE ]] && source $__KUBEADM_COMPLETION_FILE

    unset __KUBEADM_COMPLETION_FILE
fi

