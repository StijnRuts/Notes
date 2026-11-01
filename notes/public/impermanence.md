---
tags:
  - devops
  - system
---

# Impermanence

## About

Impermanence is a [[nixos]] module that makes selected files and directories survive reboots while the rest of the root filesystem is discarded.
On each boot a systemd service in the initrd moves the Btrfs `root` subvolume aside, creates a fresh one, and the declared paths are bind-mounted from `/persistent`.
This keeps the system closer to its declared state and prevents configuration drift, while still preserving logs, machine identity, SSH keys, and user files.

## Links

[Homepage](https://github.com/nix-community/impermanence)

## See also

[[disko]]

## Nix module

![[impermanence.nix]]
