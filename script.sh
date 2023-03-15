#!/bin/bash

# Set variables
TOMCAT_HOME=/path/to/tomcat
WAR_FILE=/path/to/war/file.war

# Stop Tomcat
$TOMCAT_HOME/bin/shutdown.sh

# Remove old WAR file and directory
rm -rf $TOMCAT_HOME/webapps/myapp*
rm -rf $TOMCAT_HOME/work/Catalina/localhost/myapp*

# Copy new WAR file to webapps directory
cp $WAR_FILE $TOMCAT_HOME/webapps/

# Start Tomcat
$TOMCAT_HOME/bin/startup.sh
