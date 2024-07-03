FROM openjdk:17-jdk-slim
VOLUME /tmp
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
RUN mkdir -p /app/uploads/
ENV UPLOAD_DIR=/app/uploads/
ENTRYPOINT ["java","-jar","/app.jar"]
