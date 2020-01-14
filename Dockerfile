FROM adoptopenjdk/openjdk8-openj9
EXPOSE 8180
ARG JAR_FILE
ADD /target/${JAR_FILE} spring-boot-hello-world.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","spring-boot-hello-world.jar"]