FROM maven:3.5.0-jdk-8-alpine
COPY . /var/token-dispenser
RUN cd /var/token-dispenser && mvn install
ENTRYPOINT ["java", "-jar", "/var/token-dispenser/target/token-dispenser.jar"]

