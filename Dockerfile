FROM tomcat:alpine
USER root
ADD http://54.209.55.182:8081/artifactory/ext-release-local/org/sourceforge/pebble/pebble/2.6.6-SNAPSHOT-7/pebble-2.6.6-SNAPSHOT-7.war /usr/local/tomcat/webapps/pebble.war
run mkdir /usr/local/tomcat/webapps/pebbleblog
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
CMD ["catalina.sh","run"]