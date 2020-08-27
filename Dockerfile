# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "njualemajong@yahoo.co.uk" 
COPY webapp/target/holiday.war /usr/local/tomcat/webapps
