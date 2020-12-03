start: compile
	docker run \
		--tty \
		--interactive \
		--rm \
		--user "$$(id -u)" \
		--workdir "/app" \
		--volume "${PWD}:/app" \
		--publish 8080:8080 \
		node:15.3-alpine3.12 yarn dev

compile: yarn
	docker run \
		--tty \
		--interactive \
		--rm \
		--user "$$(id -u)" \
		--workdir "/app" \
		--volume "${PWD}:/app" \
		--publish 8080:8080 \
		node:15.3-alpine3.12 yarn compile

yarn:
	docker run \
		--tty \
		--interactive \
		--rm \
		--user "$$(id -u)" \
		--workdir "/app" \
		--volume "${PWD}:/app" \
		--publish 8080:8080 \
		node:15.3-alpine3.12 yarn

