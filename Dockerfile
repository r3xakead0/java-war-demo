FROM tomcat:10.1-jdk17-temurin

# Limpia apps default para imagen más chica y rápida al arrancar
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia el WAR ya compilado por Maven (lo crea el pipeline antes)
COPY target/app.war /usr/local/tomcat/webapps/app.war

EXPOSE 8080
CMD ["catalina.sh", "run"]