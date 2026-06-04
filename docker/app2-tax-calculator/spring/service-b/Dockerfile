FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 3090
CMD ["java", "-jar", "app.jar", "--server.port=3090"]