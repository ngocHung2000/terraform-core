.PHONY: help init plan apply destroy validate fmt

help:
	@echo "Terragrunt Commands:"
	@echo "  make init ENV=dev PROJECT=project-a COMPONENT=networking"
	@echo "  make plan ENV=dev PROJECT=project-a COMPONENT=networking"
	@echo "  make apply ENV=dev PROJECT=project-a COMPONENT=networking"
	@echo "  make destroy ENV=dev PROJECT=project-a COMPONENT=networking"

init:
	cd environments/$(ENV)/$(PROJECT)/$(COMPONENT) && terragrunt init

plan:
	cd environments/$(ENV)/$(PROJECT)/$(COMPONENT) && terragrunt plan

apply:
	cd environments/$(ENV)/$(PROJECT)/$(COMPONENT) && terragrunt apply

destroy:
	cd environments/$(ENV)/$(PROJECT)/$(COMPONENT) && terragrunt destroy

validate:
	cd environments/$(ENV)/$(PROJECT)/$(COMPONENT) && terragrunt validate

fmt:
	terraform fmt -recursive .
