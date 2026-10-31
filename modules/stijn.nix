{ den, ... }:
{
  den.aspects.stijn = {
    includes = [
      den.batteries.define-user
      (den.batteries.user-shell "zsh")
    ];

    homeManager =
      { pkgs, ... }:
      {
        home.packages = [
          pkgs.zsh
          pkgs.helix
          pkgs.yazi
          pkgs.git
          pkgs.lazygit
        ];
      };
  };
}
