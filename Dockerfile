FROM eclipse-temurin:17-jdk-alpine

RUN apk add screen

RUN adduser -D mcserver 
USER mcserver

WORKDIR /home/mcserver
VOLUME /home/mcserver

COPY minecraft_server.1.20.1.jar ./

RUN java -Xmx1024M -Xms1024M -jar minecraft_server.1.20.1.jar nogui
RUN sed -i 's/=false/=true/' eula.txt

EXPOSE 25565

CMD [  "screen", "-S", "minecraft_server", "java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft_server.1.20.1.jar", "nogui" ]