{ den, ... }:
{
  perSystem =
    { pkgs, ... }:
    {
      packages = den.lib.nh.denPackages { fromFlake = true; } pkgs;

      make-shells.default = {
        packages = [ pkgs.nh ];
      };
    };
}
