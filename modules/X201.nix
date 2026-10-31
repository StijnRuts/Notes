{ den, ... }:
{
  den.hosts.x86_64-linux.X201 = {
    users.stijn.includes = [ den.batteries.primary-user ];
  };

  den.aspects.X201 = {
    nixos =
      {
        den.default.nixos.system.stateVersion = "26.05";
      };

    provides.to-users.homeManager = {
      den.default.homeManager.home.stateVersion = "26.05";
    };
  };
}
