#Pull jenkins verion 1.609
FROM jenkins:1.609.1

#maintainer
MAINTAINER anthonyramirez

#adding USER = root to make directories
USER root

#creating directory to store jenkins logs
RUN mkdir /var/log/jenkins

#using chown to allow the jenkins user to be able to write to the folder
RUN chown -R jenkins:jenkins /var/log/jenkins

#
USER jenkins

#Environment variables assignment
ENV JAVA_OPTS="-Xmx8192m"

#Environment variable assignment
ENV JENKINS_OPTS="--handlerCountStartup=100 --handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log"

