{ utils, ... }: {
  fileSystems."/persistent".neededForBoot = true;

  boot.initrd.systemd = {
    enable = true;
    services.wipe-root = {
      # Specify dependencies explicitly
      unitConfig.DefaultDependencies = false;
      # The script needs to run to completion before this service is done
      serviceConfig.Type = "oneshot";
      # This service is required for boot to succeed
      wantedBy = [ "initrd.target" ];
      # Should complete before any file systems are mounted
      before = [ "sysroot.mount" ];

      # Wait for the disk to appear
      requires = [ "${utils.escapeSystemdPath "/dev/root_vg/root"}.device" ];
      after = [
        "${utils.escapeSystemdPath "/dev/root_vg/root"}.device"
        # Allow hibernation to resume before trying to alter any data
        "local-fs-pre.target"
      ];

      script = ''
        mkdir /btrfs_tmp
        mount /dev/root_vg/root /btrfs_tmp
        trap 'umount /btrfs_tmp' EXIT
        if [[ -e /btrfs_tmp/root ]]; then
            mkdir -p /btrfs_tmp/old_roots
            timestamp=$(date --date="@$(stat -c %Y /btrfs_tmp/root)" "+%Y-%m-%-d_%H:%M:%S")
            mv /btrfs_tmp/root "/btrfs_tmp/old_roots/$timestamp"
        fi

        for i in $(find /btrfs_tmp/old_roots/ -maxdepth 1 -mtime +30); do
            btrfs subvolume delete --recursive "$i"
        done

        btrfs subvolume create /btrfs_tmp/root
      '';
    };
  };

  environment.persistence."/persistent" = {
    enable = true;
    hideMounts = true;

    directories = [
      "/var/log"
      "/var/lib/nixos"
      "/var/lib/systemd/coredump"
      "/var/lib/bluetooth"
      "/etc/NetworkManager/system-connections"
    ];
    files = [
      "/etc/machine-id"
    ];

    users.stijn = {
      directories = [
        "Desktop"
        "Documents"
        "Downloads"
        "Music"
        "NixOS"
        "Pictures"
        "Projects"
        "Public"
        "Templates"
        "Videos"
        ".local/share/Trash"
        { directory = ".ssh"; mode = "0700"; }
      ];
    };
  };
}
