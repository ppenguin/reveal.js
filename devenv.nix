{pkgs, ...}: let
  np = pkgs.nodePackages;
in {
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
}
