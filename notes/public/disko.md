---
tags:
  - nix
  - devops
  - partitioning
---

# Disko

## About

Disko is a [[nix]] tool for declaratively describing disk layouts.
A configuration defines disks, partitions, filesystems, LUKS containers, LVM volumes, and mount points; disko then generates the commands to destroy, format, and mount them.
Because the layout lives with the rest of the Nix configuration, the same definition can be reused when reinstalling a machine.

## Links

[Homepage](https://github.com/nix-community/disko)

## See also

[[impermanence]]

## Nix module

![[disko.nix]]
