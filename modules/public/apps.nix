{ den, ... }: {
  den.aspects.apps = {
    includes = [
      den.aspects.firefox
      den.aspects.git
      den.aspects.helix
      den.aspects.yazi
      den.aspects.zellij
      den.aspects.zsh
    ];
  };
}
