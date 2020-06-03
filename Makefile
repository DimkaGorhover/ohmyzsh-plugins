HOME_DIR=$(shell echo $${HOME})
OH_MY_ZSH_DIR=$(HOME_DIR)/.oh-my-zsh
OH_MY_ZSH_CACHE_DIR=$(OH_MY_ZSH_DIR)/cache
OHMYZSH_PLUGINS_DIR=$(HOME_DIR)/.ohmyzsh-plugins

__install_sh_file=$(shell pwd)/.install.sh

# .SILENT:
clean:
	rm -rf \
	$(OHMYZSH_PLUGINS_DIR) \
	$(OH_MY_ZSH_CACHE_DIR)/kubeadm_completion \
	$(OH_MY_ZSH_CACHE_DIR)/kompose_completion \
	$(OH_MY_ZSH_CACHE_DIR)/kubectx_completion \
	$(OH_MY_ZSH_CACHE_DIR)/kubens_completion

install: clean
	chmod +x $(__install_sh_file) && \
	$(__install_sh_file) \
		$(OH_MY_ZSH_DIR) \
		$(OHMYZSH_PLUGINS_DIR)
