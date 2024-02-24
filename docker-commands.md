Docker commands: 
    
* Ctrl+D to exit shell Cli instead of Ctrl+c or type exit

* Running containers:
    - docker run <image name> <override command (optional)>
    - docker run -it (allows typing commands in the shell) <image name> sh (runs the program shell if available) <override command (optional)>
    - docker run -p <your machine port>:<docker listening port> <image name>
        {running an image with port mapping}

* Creating and running containers: 
    - docker create <image name> <override command (optional and persistent)> 
        {creates new container from already existing image}
    - docker start -a 

* List containers: 
    - docker ps {lists running containers only}
    - docker ps --all {lists all containers}

* Get logs from running containers (if -a is not running)
    - docker logs <container ID>

* Stopping running containers: 
    - docker stop <container ID> {with 10 seconds buffer time}
    - docker kill <container ID> {immediately}

* Executing additional commands inside a container: 
    - docker exec -it (to receive commands and format text) <container ID> <command>
    - docker exec -it (to receive commands and format text) <container ID> sh (name of the shell used bu docker)
        {getting a command prompt inside a container instead of having to execute each command individually}

* Delete/Prune all containers and cache: 
    - docker system prune

* Build Docker file: 
    - docker build .
    - docker build -t <required name>:<latest || version> .
        {Tagging an image (use a name instead of the image ID)} 


