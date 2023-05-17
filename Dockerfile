FROM openjdk:11

WORKDIR /app

COPY app/build.gradle settings.gradle gradlew /app/

COPY gradle /app/gradle

COPY app/src /app/src

RUN ./gradlew build

ENTRYPOINT ["java","-jar","/app/build/libs/*.jar"]