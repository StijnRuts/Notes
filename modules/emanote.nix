{ inputs, ... }:
let
  publicLayers = [
    {
      path = ./.;
      pathString = "./modules";
      mountPoint = "modules";
    }
    {
      path = ../public_notes;
      pathString = "./public_notes";
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
    emanote.url = "github:srid/emanote";
  };

  imports = [ inputs.emanote.flakeModule ];

  perSystem = _: {
    emanote.sites = {
      public.layers = publicLayers;
      private.layers = publicLayers ++ privateLayers;
    };
  };
}
