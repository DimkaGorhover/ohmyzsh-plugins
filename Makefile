oh_my_zsh_dir=$${HOME}/.oh-my-zsh
ohmyzsh_plugins_dir="$${HOME}/.ohmyzsh-plugins"

install_sh_file=$(shell pwd)/.install.sh

clean:
	rm -rf $(ohmyzsh_plugins_dir)

install: clean
	chmod +x $(install_sh_file) && \
	$(install_sh_file) \
		$(oh_my_zsh_dir) \
		$(ohmyzsh_plugins_dir)

MAKEFLAGS += --silent
.PHONY: all
