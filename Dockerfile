FROM openjdk:8-jdk-alpine
MAINTAINER GSD
LABEL description="mylibrary-config-service"
RUN ["mkdir", "-p", "/opt/app"]
WORKDIR /opt/app
COPY ["target/mylibrary-config-service*.jar", "mylibrary-config-service.jar"]
ENTRYPOINT ["java", "-Xmx256m", "-jar", "mylibrary-config-service.jar"]