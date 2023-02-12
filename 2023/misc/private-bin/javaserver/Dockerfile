FROM gradle:6-jdk11 AS TEMP_BUILD_STAGE
COPY --chown=gradle:gradle src/ /home/gradle
RUN gradle jar || return 1

# actual container
FROM eclipse-temurin:11-jre
ENV ARTIFACT_NAME=Bin-1.1.7.jar
ENV APP_HOME=/app
COPY --from=TEMP_BUILD_STAGE /home/gradle/build/libs/$ARTIFACT_NAME $APP_HOME/
WORKDIR $APP_HOME
RUN groupadd -r -g 1000 user && useradd -r -g user -u 1000 user
RUN chown -R user:user /app
USER user
EXPOSE 6122
ENTRYPOINT exec java -jar ${ARTIFACT_NAME}
