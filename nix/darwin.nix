{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages =
    [
      # tools
      pkgs.git
      pkgs.gitAndTools.hub
      pkgs.neovim
      pkgs.vim
      pkgs.ffmpeg
      pkgs.coq
      pkgs.hyperfine
      pkgs.openssl
      pkgs.cacert
      pkgs.antibody
      pkgs.gitAndTools.diff-so-fancy
      pkgs.direnv
      pkgs.wget
      pkgs.exa
      pkgs.fzf
      pkgs.hugo
      pkgs.texlive.combined.scheme-full
      pkgs.nix
      pkgs.clojure
      pkgs.go
      pkgs.ripgrep
      pkgs.youtube-dl
      pkgs.mitmproxy
      pkgs.tree
      pkgs.kubectl
      pkgs.minikube
      pkgs.cmake
      pkgs.screenfetch
    ];

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableBashCompletion = true;
    enableFzfHistory = true;
    promptInit = "";
  };

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
