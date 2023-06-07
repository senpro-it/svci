FROM gradle:8-jdk-jammy AS build

COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN ./gradlew clean build shadowJar startShadowScripts
RUN ls -la /home/gradle/src/build/libs

FROM eclipse-temurin:8-jre

RUN mkdir /app
COPY --from=build /home/gradle/src/build/libs/svci-*-all.jar /app/svci.jar
ENTRYPOINT ["java", "-jar", "/app/svci.jar"]
