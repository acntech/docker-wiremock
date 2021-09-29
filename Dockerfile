FROM openjdk:8-jre

ARG VERSION=2.31.0

RUN mkdir -p /opt/wiremock

WORKDIR /opt/wiremock

RUN curl https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-jre8-standalone/${VERSION}/wiremock-jre8-standalone-${VERSION}.jar --output wiremock-standalone.jar

EXPOSE 8080

CMD [ "java", "-jar", "wiremock-standalone.jar" ]