{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    name = "resume";
    buildInputs = with pkgs; [
      texlive.combined.scheme-full
    ];
  }