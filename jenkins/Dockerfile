FROM jenkins:1.642.2
COPY plugins.txt /usr/share/jenkins/ref/
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt