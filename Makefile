start: compile
	docker run \
		--tty \
		--interactive \
		--rm \
		--user "$$(id -u)" \
		--workdir "/app" \
		--volume "${PWD}:/app" \
		--publish 8080:8080 \
		node:13.8-alpine3.11 yarn dev

compile: yarn
	docker run \
		--tty \
		--interactive \
		--rm \
		--user "$$(id -u)" \
		--workdir "/app" \
		--volume "${PWD}:/app" \
		--publish 8080:8080 \
		node:13.8-alpine3.11 yarn compile

yarn:
	docker run \
		--tty \
		--interactive \
		--rm \
		--user "$$(id -u)" \
		--workdir "/app" \
		--volume "${PWD}:/app" \
		--publish 8080:8080 \
		node:13.8-alpine3.11 yarn
