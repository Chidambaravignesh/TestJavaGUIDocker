FROM maven:3.8.1-openjdk-11-slim AS builder

WORKDIR /app

COPY pom.xml .

RUN mvn -e -B dependency:resolve

COPY src ./src

RUN mvn clean -e -B package

EXPOSE 8080
ADD target/test-java-gui-image.jar test-java-gui-image.jar
ENTRYPOINT ["java","-jar","/test-java-gui-image.jar"]
