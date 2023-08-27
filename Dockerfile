FROM jboss/wildfly

LABEL maintainer="fatima.caballero@estudiantes.utec.edu.uy"

ADD target/WildflyOnDocker-1.0-SNAPSHOT.war /opt/jboss/wildfly/standalone/deployments/

USER root
RUN chgrp -R 0 $JBOSS_HOME &&\
chmod -R g+rw $JBOSS_HOME
