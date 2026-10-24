{ ezModules, ... }: {
  imports = [ ezModules.helix ];

  home = {
    username = "stijn";
    homeDirectory = "/home/stijn";
    stateVersion = "26.05";
  };
}
