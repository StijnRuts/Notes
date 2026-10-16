{ inputs, ... }: {
  flake-file.inputs = {
    emanote.url = "github:srid/emanote";
  };

  imports = [ inputs.emanote.flakeModule ];

  perSystem = _: {
    emanote = {
      sites = {
        notes = {
          layers = [
            {
              path = ../notes;
              pathString = "./notes";
            }
          ];
        };
      };
    };
  };
}
