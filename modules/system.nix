{ den, ... }: {
  den.aspects.system = {
    includes = [
      den.aspects.audio
      den.aspects.belgium
      den.aspects.impermanence
      den.aspects.networking
      den.aspects.nix
      den.aspects.printing
    ];
  };
}
