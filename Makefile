start:
	docker run --tty --interactive --rm --user "$$(id -u)" --workdir "/app" \
		--volume "${PWD}:/app" --publish 8080:8080 \
		node:13.8-alpine3.11 sh -c '\
			yarn && yarn compile && yarn dev \
		'

#  docker run --rm --user "${UID}" --workdir /app --volume "$PWD:/app" \
#  	node:13.8-alpine3.11 "$@
#source aliases.sh
#yarn
#docker-compose up -d
#
#http://127.0.0.1:8080/
