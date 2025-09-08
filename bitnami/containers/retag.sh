BITNAMI_TAG="${1}"
SAASAPARILLA_TAG=$(sed -E 's/^bitnami\//saasaparilla\//' <<< "${BITNAMI_TAG}")

export DOCKER_CONFIG=.docker

echo "${BITNAMI_TAG}"
echo "${SAASAPARILLA_TAG}"

docker pull "${BITNAMI_TAG}"
docker tag "${BITNAMI_TAG}" "${SAASAPARILLA_TAG}"
docker push "${SAASAPARILLA_TAG}"
