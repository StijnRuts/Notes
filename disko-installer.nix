# Disk layout as created by the NixOS graphical installer on the 500 GB
# Crucial CT500BX500SSD1 (/dev/sda).
{
  disko.devices = {
    disk = {
      maindisk = {
        type = "disk";
        device = "/dev/disk/by-id/ata-CT500BX500SSD1_2508E9AAEE57";
        content = {
          type = "table";
          format = "msdos";
          partitions = [
            {
              name = "root";
              part-type = "primary";
              start = "2048s";
              end = "958318223s";
              fs-type = "btrfs";
              bootable = true;
              content = {
                type = "btrfs";
                extraArgs = [ "-f" ];
                mountpoint = "/";
                mountOptions = [
                  "noatime"
                  "compress=zstd:3"
                  "ssd"
                  "discard=async"
                  "space_cache=v2"
                ];
                subvolumes = {
                  "/home" = {
                    mountpoint = "/home";
                    mountOptions = [
                      "noatime"
                      "compress=zstd:3"
                      "ssd"
                      "discard=async"
                      "space_cache=v2"
                    ];
                  };
                  "/nix" = {
                    mountpoint = "/nix";
                    mountOptions = [
                      "noatime"
                      "compress=zstd:3"
                      "ssd"
                      "discard=async"
                      "space_cache=v2"
                    ];
                  };
                };
              };
            }
            {
              name = "swap";
              part-type = "primary";
              start = "958318224s";
              end = "976773167s";
              fs-type = "linux-swap";
              content = {
                type = "swap";
              };
            }
          ];
        };
      };
    };
  };
}
