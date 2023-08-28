# Minecraft Vanilla Server

## Getting Started

1. Clone the repository
2. Build image with `docker image build -t <image_name> .`
3. Run container with detached terminal,  named volume, and port 25565 -  `docker container run -itd --name mcs_vanilla -p 25565:25565 -v <volume_name>:/home/mcserver minecraft_vanilla`

## Server Administration

1. Exec into the running container - `docker exec -it <conatiner_name> sh`
2. Find the running screen process with - `screen -ls`
3. Attach to the running screen with - `screen -rd`
4. Run minecraft server commands as needed
5. Detach from screen session with `CTRL + A + D`
