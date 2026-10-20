---
tags:
  - nix
---

# Dendritic Nix

## About

The dendritic pattern is an architecture for Nix configurations in which every non-entry-point `.nix` file is a top-level module of a module system, usually [[flake-parts]].
Each file implements a single feature across all the configurations that feature applies to ([[nixos]], [[home-manager]], nix-darwin, [[devshell]], etc).
Its path simply names that feature.
Because modules are imported automatically (for example with [[import-tree]]), file paths no longer determine evaluation, so modules can be moved, renamed, or split freely.

## Links

[Homepage](https://github.com/mightyiam/dendritic)

## See also

[[flake-file]]

## Flake module

![[dendritic.nix]]

