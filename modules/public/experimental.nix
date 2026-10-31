{
  den.aspects.experimental.nixos = {
    nix.settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };
}
