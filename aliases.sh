function node() {
  docker-compose run --rm -u "${UID}" node "$@"
}

function yarn() {
  docker-compose run --rm -u "${UID}" node yarn "$@"
}
