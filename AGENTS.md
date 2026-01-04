# AGENTS.md

## General principles
- Keep changes simple and minimal.
- Prefer existing tooling and standard utilities already used in the repo.
- Avoid introducing new external dependencies unless clearly necessary.
- Favor clarity and maintainability over cleverness.

## Repository overview
This repo contains dotfiles and supporting configuration/scripts:
- Root-level config files (e.g., `gitconfig`, `vimrc`, `curlrc`, `wgetrc`, etc.).
- `config/` for application config directories.
- `scripts/` for helper utilities.
- `packages/` for package lists and related metadata.

## Editing guidelines
- Keep modifications scoped and easy to review.
- Preserve existing formatting conventions in each file.
- Avoid adding heavyweight tooling or frameworks.
- Prefer POSIX-compatible shell and standard CLI tools.

## Scripts
- Keep scripts small and focused.
- Avoid unnecessary dependencies; use core utilities when possible.
- Include brief comments only when logic is non-obvious.

## Testing/validation
- If changes are not trivially verifiable, document manual verification steps.
- Do not run installation steps unless explicitly required.

## File-specific notes
- `gitconfig`, `vimrc`, `curlrc`, `wgetrc`, etc.: preserve ordering and style.
- `config/`: follow existing per-tool conventions.
