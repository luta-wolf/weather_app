all: 
	docker-compose -f docker-compose.yml build
	docker-compose -f docker-compose.yml up -d
clean:
	docker-compose -f docker-compose.yml stop
	docker-compose -f docker-compose.yml down

fclean: clean
	docker system prune -f --all --volumes
	docker system prune -f
	docker image prune -f

rm:
	@docker stop $(docker ps -qa)
	@docker rm $(docker ps -qa)
	@docker rmi -f $(docker images -qa)
	@docker volume rm $(docker volume ls -q)
	@docker network rm $(docker network ls -q)


re: fclean all

.PHONY: all clean fclean re
