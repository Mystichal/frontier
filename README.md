Start the containers

```
docker compose -d && docker compose logs -f world-deployer
```

Kill the containers

```
docker compose down
```

Example of how to install a contract, smart-gate for example

```
docker exec -it frontier sh
```

in the new terminal

```
cd smart-gate/packages/contracts

npmp install
```

Then find the WORLD_ADDRESS in ./logs/world-deployer.log

```
pnpm deploy:local --worldAddress <WORLD_ADDRESS>
```

Tada
