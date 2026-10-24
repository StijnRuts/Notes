{ inputs, ... }:
let
  publicLayers = [
    {
      path = ../public_notes;
      pathString = "./public_notes";
    }
    {
      path = ./.;
      pathString = "./modules";
      mountPoint = "modules";
    }
    {
      path = ../nixos-modules;
      pathString = "./nixos-modules";
      mountPoint = "nixos-modules";
    }
    {
      path = ../nixos-configurations;
      pathString = "./nixos-configurations";
      mountPoint = "nixos-configurations";
    }
    {
      path = ../home-modules;
      pathString = "./home-modules";
      mountPoint = "home-modules";
    }
    {
      path = ../home-configurations;
      pathString = "./home-configurations";
      mountPoint = "home-configurations";
    }
  ];
  privateLayers = [
    {
      path = ../private_notes;
      pathString = "./private_notes";
      mountPoint = "private";
    }
    {
      path = ../journal;
      pathString = "./journal";
      mountPoint = "journal";
    }
  ];
in
{
  flake-file.inputs = {
    emanote = {
      url = "github:srid/emanote";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-parts.follows = "flake-parts";
    };
  };

  imports = [ inputs.emanote.flakeModule ];

  perSystem = _: {
    emanote.sites = {
      public.layers = publicLayers;
      private.layers = publicLayers ++ privateLayers;
    };
  };
}
