limactl start --name=default https://gist.githubusercontent.com/developer88/e58b2929e32f9c09e8cbe6eb2f6e03d7/raw/3d460d249304b35743c46d1fb0258ec8cc7d6c94/docker-vz.yaml
docker context create lima-default --docker "host=unix:///Users/$USER/.lima/default/sock/docker.sock"
docker context use lima-default
docker network create shared
docker buildx install
creds docker configure