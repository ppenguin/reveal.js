{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: let
  np = pkgs.nodePackages;
in {
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = with np; [gulp];

  languages.javascript = {
    enable = true;
    package = np.nodejs;
    directory = "./";
    npm = {
      enable = true;
      package = np.npm;
      install.enable = true;
    };
  };

  # https://devenv.sh/languages/

  # https://devenv.sh/processes/
  # processes.cargo-watch.exec = "cargo-watch";

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
