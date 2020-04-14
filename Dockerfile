FROM openjdk:14-alpine
COPY build/libs/mn2-liquibase-transaction-*-all.jar mn2-liquibase-transaction.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "mn2-liquibase-transaction.jar"]
