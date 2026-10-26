{ inputs, ... }: {
  flake.nixosConfigurations.X201 = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      inputs.disko.nixosModules.disko
      ../X201/disko.nix
      inputs.impermanence.nixosModules.impermanence
      ../X201/impermanence.nix
      ../X201/hardware.nix
      ../X201/configuration.nix
    ];
  };
}
