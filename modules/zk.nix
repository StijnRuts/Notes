_: {
  perSystem = { pkgs, ... }: {
    make-shells.default = {
      packages = with pkgs; [
        zk
        bat
        fzf
      ];
    };
  };
}
