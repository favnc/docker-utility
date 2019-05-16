# docker-utility
docker-gc = The docker-gc utility helps clean up your Docker host by removing containers and images that are not required. It removes all the containers that existed more than an hour ago. Also, it removes images that don’t belong to any remaining containers.

You can use docker-gc both as a script and container.

If you are fine with the docker-gc clean up plan, you can again run docker-gc without DRY_RUN flag to perform the clean up.
