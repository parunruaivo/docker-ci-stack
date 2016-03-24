FROM jenkins:1.642.2

# root is required to modify uid
USER root

ENV JENKINS_USER jenkins
RUN usermod --uid 1000 $JENKINS_USER
RUN groupmod --gid 1000 $JENKINS_USER
RUN chown -R $JENKINS_USER:$JENKINS_USER "$JENKINS_HOME" /usr/share/jenkins/ref

# restore ENTRYPOINT to startup as jenkins user
USER $JENKINS_USER

COPY plugins.txt /usr/share/jenkins/ref/
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy

RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt