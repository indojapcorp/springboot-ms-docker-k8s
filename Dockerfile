FROM fabric8/java-alpine-openjdk11-jre:1.9.0
WORKDIR /opt
ENV PORT 8080
COPY --from=build /opt/target/*.jar /opt/app.jar
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar
