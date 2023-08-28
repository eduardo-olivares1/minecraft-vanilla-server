# Minecraft Vanilla Server

## Getting Started

1. Clone the repository
2. Build image with `docker image build -t <image_name> .`
3. Run container with detached terminal,  named volume, and port 25565 -  `docker container run -itd --name mcs_vanilla -p 25565:25565 -v <volume_name>:/home/mcserver minecraft_vanilla`
