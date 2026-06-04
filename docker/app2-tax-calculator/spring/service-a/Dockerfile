FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 3080
CMD ["java", "-jar", "app.jar", "--server.port=3080"]

