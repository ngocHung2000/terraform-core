# Terragrunt Multi-Environment Guide

## Directory Structure

```
terraform-core/
├── terragrunt.hcl              # Root config with common settings
├── modules/                     # Reusable Terraform modules
│   ├── networking/vpc/
│   ├── compute/eks/
│   ├── database/rds/
│   └── security/iam/
└── environments/
    ├── dev/
    │   ├── project-a/
    │   │   ├── networking/
    │   │   └── eks/
    │   └── project-b/
    ├── staging/
    └── production/
```

## Usage Examples

### Deploy Single Component
```bash
cd environments/dev/project-a/networking
terragrunt plan
terragrunt apply
```

### Deploy All Components in Project
```bash
cd environments/dev/project-a
terragrunt run-all plan
terragrunt run-all apply
```

### Deploy Specific Environment
```bash
cd environments/dev
terragrunt run-all apply
```

## Common Commands

```bash
# Initialize
terragrunt init

# Plan changes
terragrunt plan

# Apply changes
terragrunt apply

# Destroy resources
terragrunt destroy

# Validate configuration
terragrunt validate

# Format code
terragrunt hclfmt
```

## Best Practices

1. Always run plan before apply
2. Use run-all with caution
3. Review dependencies carefully
4. Keep state files secure
5. Use consistent naming


## Git Hooks

This repository uses Git Hooks to enforce code quality.

### Setup

```bash
# Linux/Mac
chmod +x scripts/setup-hooks.sh
./scripts/setup-hooks.sh
```

### Commit Message Format

Use Conventional Commits:

```bash
feat(vpc): add multi-az support
fix(eks): resolve node group scaling
docs: update README
```

See `docs/GIT_HOOKS.md` for details.
