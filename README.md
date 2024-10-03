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
docker compose up -d --build && docker logs -f world-deployer
```

How to kill the containers after your done, dont as long as your using them, world-deployer dies when its done

```
docker compose down
```

Example of how to install a contract, smart-gate for example

```
docker exec -it frontier sh
```

in the connected terminal

```
cd smart-gate/packages/contracts

npmp install
```

Then find the WORLD_ADDRESS from the world-deployer container from terminal

```
pnpm deploy:local --worldAddress <WORLD_ADDRESS>
```

Tada
