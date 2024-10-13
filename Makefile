up:
	docker compose up -d --build
down:
	docker compose down
install-gate-keeper:
	docker exec -it frontier cd gate-keeper/packages/contracts && pnpm install
install-item-seller:
	docker exec -it frontier cd item-seller/packages/contracts && pnpm install
install-smart-gate:
	docker exec -it frontier /bin/sh -c "cd smart-gate/packages/contracts && pnpm install"
install-smart-turret:
	docker exec -it frontier /bin/sh -c "cd smart-turret/packages/contracts && pnpm install"
install-vending-machine:
	docker exec -it frontier /bin/sh -c "cd vending-machine/packages/contracts && pnpm deploy:local --worldAddress $(WORLD_ADDRESS)"
deploy-gate-keeper:
	docker exec -it frontier /bin/sh -c "cd gate-keeper/packages/contracts && pnpm deploy:local --worldAddress $(WORLD_ADDRESS)"
deploy-item-seller:
	docker exec -it frontier /bin/sh -c "cd item-seller/packages/contracts && pnpm deploy:local --worldAddress $(WORLD_ADDRESS)"
deploy-smart-gate:
	docker exec -it frontier /bin/sh -c "cd smart-gate/packages/contracts && pnpm deploy:local --worldAddress $(WORLD_ADDRESS)"
deploy-smart-turret:
	docker exec -it frontier /bin/sh -c "cd smart-turret/packages/contracts && pnpm deploy:local --worldAddress $(WORLD_ADDRESS)"
deploy-vending-machine:
	docker exec -it frontier /bin/sh -c "cd vending-machine/packages/contracts && pnpm deploy:local --worldAddress $(WORLD_ADDRESS)"

