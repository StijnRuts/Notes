{ pkgs, ... }: {
  services.greetd = {
    enable = true;
    useTextGreeter = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --cmd bash --user-menu --remember";
      };
    };
  };
}
