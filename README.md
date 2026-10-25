# Installing

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
