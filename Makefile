.PHONY: all
all: bin dotfiles

.PHONY: bin
bin: ## Copy bin files to /usr/local/bin/
	for file in $(shell find $(CURDIR)/bin -type f); do \
		f=$$(basename $$file); \
		sudo \cp $$file /usr/local/bin/$$f; \
	done

.PHONY: dotfiles
dotfiles: ## Copy dotfiles to HOME folder
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".git"); do \
		\cp $$file $(HOME)/$$f; \
	done; \

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'