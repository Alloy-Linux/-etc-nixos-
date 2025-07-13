{ inputs, settings, pkgs, ... }: {
  home-manager.users.${settings.account.name} = { ... }: let
    unstable = import inputs.nixpkgs-unstable { inherit (pkgs) system; config.allowUnfree = true; };
  in {
    home.packages = with unstable; [
      steam
      gamemode
      gamescope
      mangohud
      wine
    ];
  };
}
