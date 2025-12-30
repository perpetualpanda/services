.PHONY: install
install:
	uv sync
	uv run ansible-galaxy collection install bitwarden.secrets
	uv run ansible-galaxy collection install community.docker
	uv rnu ansible-galaxy collection install community.general

.PHONY: deploy
deploy:
	uv run --env-file .env ansible-playbook main.yml -i inventory
