{ den, ... }: {
  den.aspects.stijn = {
    includes = [
      den.batteries.define-user
      (den.batteries.user-shell "zsh")
      den.aspects.apps
    ];

    nixos = {
      users.users."stijn" = {
        description = "Stijn Ruts";
        password = "fake";
      };
    };

    homeManager = {
      programs.git.settings.user = {
        name = "Stijn Ruts";
        email = "git@stijnruts.be";
      };
    };
  };
}
