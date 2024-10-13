Prerequisite

- Docker, for windows see https://docs.docker.com/desktop/install/windows-install/
- Docker, for linux see https://docs.docker.com/desktop/install/linux/

Docs

- https://docs.evefrontier.com/SmartTurret

Clone the repo

```
git clone https://github.com/Mystichal/frontier.git
```

Open a terminal in the frontier folder

Building and starting the containers

```
make up
```

How to kill the containers after you're done:

```
make down
```

Example of how to install a contract, smart-gate for example

```
make install-smart-gate
```

Then to deploy contract, you find the world address after the world-deployer container is done running in the ./.logs/run_env.json

```
make deploy-smart-gate WORLD_ADDRESS=<INSERT_GENERATED_WORLD_ADDRESS_HERE>
```

These are the available make commands:
```
make up
make down
make install-gate-keeper
make install-item-seller
make install-smart-gate
make install-smart-turret
make install-vending-machine
make deploy-gate-keeper WORLD_ADDRESS=<WORLD_ADDRESS>
make deploy-item-seller WORLD_ADDRESS=<WORLD_ADDRESS>
make deploy-smart-gate WORLD_ADDRESS=<WORLD_ADDRESS>
make deploy-smart-turret WORLD_ADDRESS=<WORLD_ADDRESS>
make deploy-vending-machine WORLD_ADDRESS=<WORLD_ADDRESS>
```

Tada
