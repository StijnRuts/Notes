{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    disko = {
      url = "github:nix-community/disko/latest";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    impermanence.url = "github:nix-community/impermanence";
  };

  outputs = inputs: {
    nixosConfigurations = {
      X201 = inputs.nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          inputs.disko.nixosModules.disko
          ./disko.nix
          inputs.impermanence.nixosModules.impermanence
          ./impermanence.nix
          ./hardware-configuration.nix
          ./configuration.nix
        ];
      };
    };
  };
}
