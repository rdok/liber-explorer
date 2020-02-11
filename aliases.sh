function node() {
  docker run --rm --user "${UID}" --workdir /app --volume "$PWD:/app" \
    node:13.8-alpine3.11 "$@"
}

function yarn() {
  node yarn "$@"
}
