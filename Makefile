start: compile
	make docker command="yarn dev"

compile: yarn
	make docker command="yarn compile"

yarn:
	make docker command=yarn

docker:
	docker run --tty --interactive --rm --user "$$(id -u)" --workdir "/app" \
		--volume "${PWD}:/app" --publish 8080:8080 node:15.3-alpine3.12 \
		$(command)

