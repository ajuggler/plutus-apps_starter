# Plutus-Apps Starter Kit

This repo provides an initial setup for working with `plutus-apps` v1.0.0.

*Note:*  `plutus-apps` v1.0.0 includes "Plutus v2" (Vasil).

## Steps

0. Assuming you have Nix and GHC Haskell installed.

1. Clone the [plutus-apps repository](https://github.com/input-output-hk/plutus-apps) .

2. Checkout the tag v1.0.0 .

```shell
git checkout v1.0.0
```

3. Make sure you have the needed substituters in your `/etc/nix/nix.conf` file:

```shell
substituters = https://cache.iog.io https://cache.nixos.org/ https://cache.zw3rk.com
trusted-public-keys = hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ= cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY= loony-tools:pr9m4BkM/5/eSTZlkQyRt57Jz7OMBxNSUiMC4FkcNfk=
```

(*Note:* if you modify your `nix.conf` then restart your computer or at least the daemon.)

4. Inside the `plutus-apps` directory, execute `nix-shell`.  (It may take a while to finish.)


5. Clone (fork) this repository.  Change the directory's name to something appropriate to your project, say "my_project".  Then rename `starter.cabal` to `my_project.cabal`.  Also:

- In line 16 of `cabal.project`, change 'starter.cabal' to 'my_project.cabal'.
- In lines 2 and 50 of `starter.cabal`, change 'starter' to 'my_project'.

6. Inside a nix-shell, `cd` to your project's directory and execute `cabal build`.

