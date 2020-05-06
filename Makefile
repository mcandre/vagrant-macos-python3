BOX_NAMESPACE=mcandre
BOX_BASENAME=vagrant-macos-python3

.PHONY: launch-vm clean-vm clean-boxes clean-vagrant-metadata

launch-vm-virtualbox: Vagrantfile bootstrap
	vagrant up --provider virtualbox

clean-vm:
	-vagrant destroy -f

clean-boxes:
	-rm *.box

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-boxes clean-vm clean-vagrant-metadata

boxes: $(BOX_BASENAME)-virtualbox.box

$(BOX_BASENAME)-virtualbox.box: clean-boxes clean-vm launch-vm-virtualbox export.Vagrantfile
	vagrant package --output $(BOX_BASENAME)-virtualbox.box --vagrantfile export.Vagrantfile

import: import-virtualbox

import-virtualbox: $(BOX_BASENAME)-virtualbox.box
	vagrant box add --force --name $(BOX_NAMESPACE)/$(BOX_BASENAME) $(BOX_BASENAME)-virtualbox.box
