{ inputs, ... }: {
  flake-file.inputs = {
    ez-configs = {
      url = "github:ehllie/ez-configs";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-parts.follows = "flake-parts";
    };
  };

  imports = [ inputs.ez-configs.flakeModule ];

  ezConfigs.root = ./..;
}
