{
  den.aspects.git.homeManager = { pkgs, ... }: {
    programs.git.enable = true;
    home.packages = [ pkgs.lazygit ];
  };
}
