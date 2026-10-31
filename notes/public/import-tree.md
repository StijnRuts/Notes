---
tags:
  - nix
---

# import-tree

## About

import-tree is a small [[nix]] library that recursively imports Nix modules from a directory.
By default it imports all `.nix` files under the given path (ignoring paths starting with an undescore),
and it works with [[flake-parts]], [[nixos]], [[home-manager]], nix-darwin, and plain `lib.evalModules`.
It is commonly used to implement the [[dendritic]] pattern, where every file is a module and directory paths only describe features.

## Links

[Homepage](https://import-tree.denful.dev)

## See also

[[flake-file]]
