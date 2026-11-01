---
tags:
  - devops
  - version-control
  - cli
---

# Git

## About

Git is a distributed version control system for tracking changes in source code and other plain-text files.
Every checkout contains the full history, and commits form a directed acyclic graph of snapshots, with branches and tags pointing into that graph.
This configuration enables Git in Home Manager and installs `lazygit`, a terminal user interface for staging, committing, and navigating history.

## Links

[Homepage](https://git-scm.com)

[Lazygit](https://github.com/jesseduffield/lazygit)

## Nix module

![[git.nix]]
