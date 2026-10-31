{
  flake-file.inputs = {
    home-manager.url = "github:nix-community/home-manager/release-26.05";
  };

  den.schema.user.classes = [ "homeManager" ];
}
