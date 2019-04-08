{ config, pkgs, ... }:

{
  environment.systemPackages =
    [
      # tools
      pkgs.git
      pkgs.cmake
      pkgs.idris
      pkgs.gitAndTools.hub
      pkgs.neovim
      pkgs.vim
      pkgs.ffmpeg
      pkgs.hyperfine
      pkgs.cacert
      pkgs.antibody
      pkgs.gitAndTools.diff-so-fancy
      pkgs.google-cloud-sdk
      pkgs.direnv
      pkgs.wget
      pkgs.exa
      pkgs.fzf
      pkgs.httpie
      pkgs.hugo
      pkgs.texlive.combined.scheme-full
      pkgs.nix
      pkgs.clojure
      pkgs.go
      pkgs.ripgrep
      pkgs.mitmproxy
      pkgs.tree
      pkgs.kubectl
      pkgs.cloc
      pkgs.minikube
      pkgs.screenfetch

      # python
      pkgs.python3
      pkgs.python2Full
      pkgs.python36Packages.pip
      pkgs.python36Packages.autopep8
      pkgs.python36Packages.black
    ];

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;
  programs.zsh.enableCompletion = false;

  programs.zsh.enable = true;
  programs.zsh.promptInit = "";
  nix.nixPath = [
    "darwin-config=$HOME/.dotfiles/nix/darwin.nix"
    "$HOME/.nix-defexpr/channels"
  ];

  # Extend PATH
  environment.systemPath = [ "/usr/local/go/bin:/usr/local/MacGPG2/bin" ];

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 3;

  # Generally set to total number of logical cores on the system. $(sysctl -n hw.ncpu)
  nix.maxJobs = 4;
  # Can cause instability in builds if more than 1
  nix.buildCores = 1;

}
