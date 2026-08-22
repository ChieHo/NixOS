{ config, pkgs, lib, ... }:

{
  environment.systemPackages = [
    (pkgs.python3.withPackages (ps: with ps; [
      jupyterlab
      ipykernel
      matplotlib
      numpy
      pandas
      scipy
    ]))
  ];
}
