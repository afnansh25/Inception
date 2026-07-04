COMPOSE = docker compose -f srcs/docker-compose.yml

all:
	$(COMPOSE) up --build

up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

clean:
	$(COMPOSE) down --rmi all

fclean:
	$(COMPOSE) down --rmi all --volumes

re: fclean all

.PHONY: all up down clean fclean re