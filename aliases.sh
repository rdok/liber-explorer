function node() {
  docker-compose exec node "$@"
}

function yarn() {
  docker-compose exec node yarn "$@"
}
