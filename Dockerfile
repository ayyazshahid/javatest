FROM tomcat:latest

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY ./javatest.war /usr/local/tomcat/webapps/ROOT.war

CMD ["/usr/local/tomcat/catalina.sh start", "run"]
