{ inputs, ezModules, ... }: {
  imports = [
    ./disko.nix
    ./hardware.nix
    inputs.disko.nixosModules.disko
    inputs.impermanence.nixosModules.impermanence
    ezModules.audio
    ezModules.belgium
    ezModules.firefox
    ezModules.helix
    ezModules.impermanence
    ezModules.networking
    ezModules.nix
    ezModules.plasma
    ezModules.printing
    ezModules.stijn
  ];

  networking.hostName = "X201";

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "26.05"; # Did you read the comment?
}
