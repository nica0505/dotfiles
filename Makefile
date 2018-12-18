.PHONY: all
all: brew dotfiles

.PHONY: brew
brew: ## Install programs with brew
	brew update
	brew install jq
	brew install kubectl
	brew install nodejs

.PHONY: dotfiles
dotfiles: ## Copy dotfiles to HOME folder
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".git"); do \
		\cp $$file $(HOME)/$$f; \
	done; \
	\cp settings.json ~/Library/Application\ Support/Code/User/settings.json

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
