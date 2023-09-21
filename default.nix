let
 pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/976fa3369d722e76f37c77493d99829540d43845.tar.gz") {};
 rpkgs = builtins.attrValues {
  inherit (pkgs.rPackages) tidymodels vetiver targets glmnet plumber;
};
 system_packages = builtins.attrValues {
  inherit (pkgs) R;
};
in
 pkgs.mkShell {
  buildInputs = [  rpkgs system_packages  ];
 }
