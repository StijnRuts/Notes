---
tags:
  - nix
  - devops
  - cli
---

# nh

## About

nh is a command-line helper for common [[nix]] workflows, including searching packages and options, building and switching NixOS or Home Manager configurations, and cleaning the store.
It aims to provide a friendlier interface and clearer output than invoking `nixos-rebuild` or `home-manager` directly.
This configuration exposes nh through [[den]]'s package helpers and includes it in the [[devshell]].

## Links

[Homepage](https://github.com/nix-community/nh)

## Nix module

![[nh.nix]]
