{ den, ... }: {
  den.hosts.x86_64-linux.X201 = {
    users.stijn.includes = [ den.batteries.primary-user ];
  };

  den.aspects.X201 = {
    includes = [
      den.aspects.disko.X201
      den.aspects.hardware.X201
      den.aspects.system
      den.aspects.desktop
    ];

    nixos = {
      system.stateVersion = "26.05";
    };

    provides.to-users.homeManager = {
      home.stateVersion = "26.05";
    };
  };
}
