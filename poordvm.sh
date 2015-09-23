export DOCKER_DEFAULT_VERSION=${DOCKER_DEFAULT_VERSION:-"1.8.2"}
export DVM_DIR=${DVM_DIR:-"${HOME}/.dockers"}

alias docker='${DVM_DIR:-"${HOME}/.dockers"}/docker-${DOCKER_VERSION:-"1.8.2"}'

dvm() {
  case $1 in 
    "use")
      DOCKER_VERSION=${DOCKER_VERSION:-${2:-$DOCKER_DEFAULT_VERSION}}
      return 0
    ;;
    "install")
      echo "Do it yourself, stick them in ${DVM_DIR}"
      return 1
    ;;
    * )
      echo "The only command is: "
      echo "  dvm use 1.8.2"
      echo ""
      echo "You can also be lazy and just set \$DOCKER_VERSION"
      return 1
    ;;
  esac

  return 1
}

dvm use ${DOCKER_DEFAULT_VERSION}
