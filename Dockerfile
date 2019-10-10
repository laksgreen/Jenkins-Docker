FROM jenkins/jenkins:lts-centos
MAINTAINER laks <laksgreen>
USER root
USER ${user}
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
COPY plugins.txt /plugins.txt
RUN /usr/local/bin/install-plugins.sh < /plugins.txt
COPY jenkins-start.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/jenkins-start.sh"]
