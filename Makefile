

all:
	@find . -name "._*" -delete
	@find . -name "._DS_Store" -delete


clean: all
	@rm -rf ~/Library/Caches && rm -rf ~/Library/Application\ Support/Code/Cache && rm -rf ~/Library/Application\ Support/Code/User/workspaceStorage

.Phony: all

