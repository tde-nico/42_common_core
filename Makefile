
# https://tangible-harbor-c59.notion.site/FT_Cursus-98f688bd250a4601b6e55ac699d17cb0
# https://find-peers.codam.nl/Rome


all:
	@df -h | grep /Users/tde-nico | grep -ioE '[0-9]\.[0-9]' | awk 'NR%2!=1'
	@find . -name "._*" -delete
	@find . -name "._DS_Store" -delete
	@rm -rf ~/Library/Caches && \
		rm -rf ~/Library/Application\ Support/Code/Cache && \
		rm -rf ~/Library/Application\ Support/Code/User/workspaceStorage
	@df -h | grep /Users/tde-nico | grep -ioE '[0-9]\.[0-9]' | awk 'NR%2!=1'

.Phony: all
