#!make

help: _header
	${info }
	@echo Opciones:
	@echo ------------------------
	@echo init
	@echo start 	[vm=debian-12]
	@echo ssh	 	[vm=debian-12]
	@echo stop 		[vm=debian-12]
	@echo clean 	[vm=debian-12]
	@echo ------------------------

_header:
	@echo -------
	@echo Vagrant
	@echo -------

vm?="debian-12"

init:
	@sudo launchctl load -w /Library/LaunchDaemons/com.vagrant.vagrant-vmware-utility.plist

start:
	@cd $(vm) && vagrant up

ssh:
	@cd $(vm) && vagrant ssh

stop:
	@cd $(vm) && vagrant halt

clean:
	@cd $(vm) && vagrant destroy -f
