{
  flake-file.inputs = {
    home-manager.url = "github:nix-community/home-manager";
  };

  den.schema.user.classes = [ "homeManager" ];
}
