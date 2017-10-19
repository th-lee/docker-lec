BASE_SITE=docker.kosta.com
# test
export NODE_ENV=test
export PORT=8001
export VIRTUAL_HOST=$NODE_ENV.$BASE_SITE
docker-compose -p ${VIRTUAL_HOST} up -d

# stage
export NODE_ENV=stage
export PORT=8002
export VIRTUAL_HOST=$NODE_ENV.$BASE_SITE
docker-compose -p ${VIRTUAL_HOST} up -d

# prod
export NODE_ENV=prod
export PORT=8003
export VIRTUAL_HOST=$BASE_SITE
docker-compose -p ${VIRTUAL_HOST} up -d
