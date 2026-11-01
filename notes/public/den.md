---
tags:
  - nix
---

# Den

## About

Den is an aspect-oriented, context-driven framework for organising [[nix]] configurations.
Instead of starting from hosts and attaching modules, a Den *aspect* is a function of context that can return configuration for several Nix classes at once, such as [[nixos]] and [[home-manager]].
Aspects compose through `includes` and are selected by hosts or users, while policies describe how entities relate.

## Links

[Homepage](https://den.denful.dev)

[GitHub](https://github.com/denful/den)

## See also

[[dendritic]]

[[flake-parts]]

## Nix module

![[den.nix]]
