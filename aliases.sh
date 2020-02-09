function node() {
  docker-compose exec -u "${UID}" node "$@"
}

function yarn() {
  docker-compose exec -u "${UID}"  node yarn "$@"
}
