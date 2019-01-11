.PHONY: all
all: brew dotfiles zsh

.PHONY: brew
PROGRAMS = jq kubectl nodejs bat
brew: ## Install programs with brew
	brew update
	$(foreach program,$(PROGRAMS),brew install $(program) || brew upgrade $(program);)
	curl -sfL https://raw.githubusercontent.com/securego/gosec/master/install.sh | sh -s -- -b $GOPATH/bin latest

.PHONY: dotfiles
dotfiles: ## Copy dotfiles to HOME folder
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".git" -not -name ".DS_Store" -not -name ".swp"); do \
		\cp $$file $(HOME)/$$f; \
	done; \
	\cp settings.json $(HOME)/Library/Application\ Support/Code/User/settings.json

.PHONY: zsh
zsh: ## Install zsh plugins
	if [ ! -d "$(HOME)/gh" ]; then \
		git clone git@github.com:jdxcode/gh.git $(HOME)/gh; \
	fi

	if [ ! -d "$(HOME)/.oh-my-zsh/custom/plugins/gh" ]; then \
		mv -n $(HOME)/gh/zsh/gh $(HOME)/.oh-my-zsh/custom/plugins/; \
	fi

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
