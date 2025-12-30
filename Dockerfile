FROM tomcat:10.1-jdk17-temurin

# clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file already compiled by Maven (it's created by the pipeline beforehand)
COPY target/app.war /usr/local/tomcat/webapps/app.war

EXPOSE 8080
CMD ["catalina.sh", "run"]