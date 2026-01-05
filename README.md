# Services - ppanda.org

Ansible playbook to provision homelab services

```
make install
make deploy
```

## Pre-requisites

- Environment variables in `.env` are configured (see `.env.example`)
- Secrets are configured in Bitwarden secrets manager
- VMs are running Ubuntu server 25.10
- Passwordless sudo is enabled for the ansible_user on each host
- Known hosts are set (otherwise Ansible SSH will complain)
- Hosts are connected to Tailnet and ACLs/firewalls are configured
