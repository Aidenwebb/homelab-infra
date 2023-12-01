fw:
	ansible-playbook run.yaml --limit opnsensefw01

mgmt:
	ansible-playbook run.yaml --limit mgmt_pve

reqs:
	pip3 install -r requirements.txt
	ansible-galaxy install -r requirements.yaml

encrypt:
	ansible-vault encrypt vars/vault.yaml

decrypt:
	ansible-vault decrypt vars/vault.yaml

gitinit:
	@./git-init.sh
	@echo "ansible vault pre-commit hook installed"
	@echo "don't forget to create a .vault-password too"
