{ inputs, ... }: {
  flake-file.inputs = {
    ez-configs.url = "github:ehllie/ez-configs";
  };

  imports = [ inputs.ez-configs.flakeModule ];

  ezConfigs = {
    root = ./..;
    globalArgs = { inherit inputs; };
  };
}
