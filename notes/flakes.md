---
tags:
  - nix
---

# Nix Flakes

## About

Nix flakes are a structured, reproducible way to package [[nix]] projects.
A flake exposes its inputs, outputs, and Nix code through `flake.nix`, while `flake.lock` pins every dependency to an exact revision,
so evaluations are reproducible across machines.
Inputs can be other flakes or plain source trees, and outputs can include packages, apps, [[devshell]], and checks.

## Links

[Nix Wiki](https://wiki.nixos.org/wiki/Flakes)

## See also

[[flake-parts]]

[[dendritic]]
