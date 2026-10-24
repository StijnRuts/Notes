{ ezModules, ... }: {
  imports = [ ezModules.greetd ];

  nixpkgs.hostPlatform = "x86_64-linux";
  networking.hostName = "X201";
  system.stateVersion = "26.05";
}
