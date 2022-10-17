FROM openjdk:11
EXPOSE 8080
ADD target/test-java-gui-image.jar test-java-gui-image.jar
ENTRYPOINT ["java","-jar","/test-java-gui-image.jar"]
