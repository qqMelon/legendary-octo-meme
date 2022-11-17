## -- Base Dockerfile -- ##
#FROM maven:3.6-jdk-12
#WORKDIR /app
#COPY . /app
#RUN mvn package
#FROM openjdk:12-alpine
#WORKDIR /app
#COPY --from=0 /app /app
#EXPOSE 8080
#CMD ["java", "-jar", "target/safireo_back.jar"]
## -- -- ##

## -- Base layered image -- ##
FROM openjdk:8-jdk-alpine

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]


# Gradle use:
# docker build --build-arg JAR_FILE=build/libs/\*.jar -t <NAME>/<IMAGE-NAME> .

# Maven use:
# docker build -t <NAME>/<IMAGE-NAME> .
