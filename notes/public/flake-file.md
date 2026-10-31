---
tags:
  - nix
---

# flake-file

## About

flake-file is a Nix library that generates a flake's `flake.nix` from Nix module options instead of maintaining it by hand.
Inputs and outputs are declared with the module system.
So normal [[nix]] features apply, including to `ìnputs`, and `nix run .#write-flake` regenerates the flake file.

## Links

[Homepage](https://flake-file.denful.dev)

## See also

[[flakes]]
