{
  description = "Framework Laptop";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
     home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
     };
     nixvim = {
      url = "github:nix-community/nixvim/nixos-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
     };
    };

  outputs = inputs@{ nixpkgs, home-manager, ... }: {
    nixosConfigurations = {
      framework = nixpkgs.lib.nixosSystem {
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.sharedModules = [
              inputs.nixvim.homeManagerModules.nixvim
            ];
            home-manager.users.adam = import ./modules/home;
          }
        ];
      };
    };
  };
}
