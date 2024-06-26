DOCKER_COMPOSE := $(shell command -v docker-compose 2> /dev/null || echo "docker compose")

step1:
	$(DOCKER_COMPOSE) up -d

# https://www.mongodb.com/docs/manual/reference/method/rs.initiate/
step2:
	@read -p "Enter host IP: " HOST_IP; \
	$(DOCKER_COMPOSE) exec mongo1 mongosh --eval "rs.initiate({ _id: 'rs0', members: [{ _id: 0, host: '$$HOST_IP:30001' }, { _id: 1, host: '$$HOST_IP:30002' }, { _id: 2, host: '$$HOST_IP:30003' } ] })"

rs_help:
	$(DOCKER_COMPOSE) exec mongo1 mongosh --eval "rs.help()"

check_status:
	$(DOCKER_COMPOSE) exec mongo1 mongosh --eval "rs.status()"

rs_config:
	$(DOCKER_COMPOSE) exec mongo1 mongosh --eval "rs.conf()"

# https://www.mongodb.com/docs/manual/reference/method/rs.remove/
remove_member:
	$(DOCKER_COMPOSE) exec mongo1 mongosh --eval "rs.remove('mongo3:27017')"

# https://www.mongodb.com/docs/manual/reference/method/rs.add/
add_member:
	$(DOCKER_COMPOSE) exec mongo1 mongosh --eval "rs.add('mongo3:27017')"

# https://www.mongodb.com/docs/manual/reference/method/rs.stepDown/
# rs.stepDown() 方法并不会立即使主节点降级。如果没有可选的从节点与主节点同步，主节点会等待最多 secondaryCatchUpPeriodSecs（默认为 10 秒）以让从节点赶上。一旦有可选的从节点可用，方法就会使主节点降级。
# 一旦降级，原主节点变为从节点，并在 stepDownSecs 指定的剩余时间内无法再次成为主节点。
primary_to_secondary:
	$(DOCKER_COMPOSE) exec mongo1 mongosh --eval "rs.stepDown()"

show_config:
	$(DOCKER_COMPOSE) exec mongo1 mongosh --eval "db.adminCommand({ getParameter: '*' })"

clean:
	$(DOCKER_COMPOSE) rm -sf
	docker volume rm replicaset_mongodata01 replicaset_mongodata02 replicaset_mongodata03
