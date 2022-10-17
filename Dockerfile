FROM openjdk:11

WORKDIR /app

COPY pom.xml .

RUN mvn -e -B dependency:resolve

COPY src ./src

RUN mvn clean -e -B package

EXPOSE 8080
ADD target/test-java-gui-image.jar test-java-gui-image.jar
ENTRYPOINT ["java","-jar","/test-java-gui-image.jar"]
