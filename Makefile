# Demarre les container docker de developpement
dev-up:
	docker compose up -d

# ReBuild les images docker puis lance les container docker de developpement
dev-up build:
	docker compose up -d --build

# Stop les container docker de developpement
dev-down:
	docker compose down

# Affiche les logs des container docker de developpement
dev-logs:
	docker compose logs -f
