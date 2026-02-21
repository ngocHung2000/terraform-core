# Git Hooks Setup Guide

## Installation

### Windows
```bash
scripts\setup-hooks.bat
```

### Linux/Mac
```bash
chmod +x scripts/setup-hooks.sh
./scripts/setup-hooks.sh
```

## Hooks

### Pre-commit
- Terraform format check
- Terragrunt format check
- Terraform validate
- Sensitive data detection

### Commit-msg
- Conventional commits enforcement
- Format: `<type>(<scope>): <subject>`

### Pre-push
- Protected branch check
- Large files detection
- TFLint validation

## Commit Message Examples

```bash
feat(vpc): add multi-az support
fix(eks): resolve node group scaling
docs: update README
```

## Bypass (Not Recommended)

```bash
git commit --no-verify
git push --no-verify
```
