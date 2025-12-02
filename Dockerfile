# Dockerfile pour Spring Boot
FROM eclipse-temurin:17-jdk-alpine

# Crée le répertoire de l'application dans le conteneur
WORKDIR /app

# Copie le jar compilé dans le conteneur
COPY target/*.jar app.jar

# Expose le port utilisé par Spring Boot
EXPOSE 8089

# Commande pour lancer l'application
ENTRYPOINT ["java", "-jar", "app.jar"]

