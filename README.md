# [notes.stijnruts.be](https://notes.stijnruts.be)

# NixOS config

## Installing

```bash
cd NixOS-config

sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko/latest -- --mode destroy,format,mount disko.nix

sudo nixos-install --no-root-password --flake .#X201
```

## New device

```bash
sudo nixos-generate-config --no-filesystems --root /mnt
vim /mnt/etc/nixos/hardware-configuration.nix
```

## Updating

```bash
sudo nixos-rebuild test --show-trace --flake .
sudo nixos-rebuild switch --show-trace --flake .
```
