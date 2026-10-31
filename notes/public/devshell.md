---
tags:
  - nix
  - devops
---

# DevShell

## About

A dev shell is a reproducible development environment defined in [[nix]] and entered with `nix develop`.
Instead of installing toolchains globally, it builds a shell containing the exact packages, environment variables, and shell hooks a project needs,
so every contributor gets the same setup on any machine.

## Links

[Nix Wiki](https://wiki.nixos.org/wiki/Development_environment_with_nix-shell)

## Nix module

![[devshell.nix]]
