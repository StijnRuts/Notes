{
  users.users."stijn" = {
    isNormalUser = true;
    description = "Stijn Ruts";
    password = "fake";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };
}
