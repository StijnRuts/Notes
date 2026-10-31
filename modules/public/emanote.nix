{ inputs, ... }:
let
  publicLayers = [
    {
      path = ../../notes/public;
      pathString = "./notes/public";
    }
    {
      path = ../../modules/public;
      pathString = "./modules/public";
      mountPoint = "modules";
    }
    {
      path = ../../config;
      pathString = "./config";
      mountPoint = "config";
    }
  ];
  privateLayers = [
    {
      path = ../../notes/private;
      pathString = "./notes/private";
      mountPoint = "private";
    }
    {
      path = ../../modules/private;
      pathString = "./modules/private";
      mountPoint = "private/modules";
    }
    {
      path = ../../journal;
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
