FROM java:8
VOLUME /tmp
ADD /target/eureka-service-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8761
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-jar","/app.jar"]