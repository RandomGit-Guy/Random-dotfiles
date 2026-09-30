{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      RandomAcerNB = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs; };
        modules = [
          ./hosts/RandomAcerNB/configuration.nix
          inputs.home-manager.nixosModules.default
	  {
	    home-manager = {
              useGlobalPkgs = true;
	      useUserPackages = true;
	      extraSpecialArgs = { inherit inputs; };
	      users.RandomGuy = import ./hosts/RandomAcerNB/home.nix;
	    };
	  }
        ];
      };
      RandomDesktopPC = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs; };
        modules = [
          ./hosts/RandomDesktopPC/configuration.nix
          inputs.home-manager.nixosModules.default
	  {
	    home-manager = {
              useGlobalPkgs = true;
	      useUserPackages = true;
	      extraSpecialArgs = { inherit inputs; };
	      users.RandomGuy = import ./hosts/RandomDesktopPC/home.nix;
	    };
	  }
        ];
      };
    };
  };
}
