all: header submodules

 OK_COLOR	= \033[0;32m

header:
	@printf "%b" "$(OK_COLOR)"
	@echo " "
	@echo "   _____ ________          .__                        .__                   "
	@echo "  /  |  |\_____  \    _____|  | _____    _____________|  |   ____           "
	@echo " /   |  |_/  ____/   /  ___/  | \__  \  /  ___/\___   /  |  /  _ \   ______ "
	@echo "/    ^   /       \   \___ \|  |__/ __ \_\___ \  /    /|  |_(  <_> ) /_____/ "
	@echo "\____   |\_______ \ /____  >____(____  /____  >/_____ \____/\____/          "
	@echo "     |__|        \/      \/          \/     \/       \/                     "

submodules:
	@echo 'initalising and updating submodule'
	@git submodule init
	@git submodule update --recursive --remote
	@echo 'submodules done'