.PHONY: all
all: dotfiles

.PHONY: dotfiles
dotfiles: ## Installs the dotfiles.
	# copy and overwrite files
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".travis.yml" -not -name ".git" -not -name ".*.swp" -not -name ".gnupg"); do \
		\cp $$file $(HOME)/$$f; \
	done; \
	source ~/.zshrc

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'