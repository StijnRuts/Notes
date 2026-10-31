---
tags:
  - nix
  - programming-language
---

# Nix

## About

Nix is a purely functional package manager and the language used to describe packages and system configurations.
It builds packages in isolation from their dependencies, gives each result a unique path in `/nix/store` derived from its inputs,
and allows multiple versions to coexist without conflicting.
Its lazy, declarative language evaluates expressions to derivations, which describe how to build artifacts reproducibly.

## Links

[Homepage](https://nixos.org)

[Nix Wiki](https://wiki.nixos.org)

## See also

[[nixos]]

[[flakes]]

## Nix module

![[nix.nix]]
