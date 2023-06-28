#! /bin/bash

env_file=".env"
(
    source "$env_file"
    docker compose --env-file .env up --build -d
    # while the docker container is not ready, we loop 🐋
    while true; do
        if docker exec manatee_db mariadb --user="$DATABASE_USER" --password="$DATABASE_PASSWORD" -e "SELECT 1" >/dev/null 2>&1; then
            break
        fi
        sleep 0.5
    done
    # once the docker container is ready, we can play 🎮 !
    docker exec -it manatee_db mariadb --user="$DATABASE_USER" --password="$DATABASE_PASSWORD" --database="$DATABASE_NAME"
    # auto closes the docker container on exit
    docker compose down
)
