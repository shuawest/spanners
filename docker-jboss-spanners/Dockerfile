FROM docker-java

ENV jboss_name jboss-eap-6.4.0
ENV spanners_name spanners-mvc-3.4-SNAPSHOT

RUN mkdir -p /opt/rh/bpms/
WORKDIR /opt/rh/bpms/

COPY config-jboss.cli /opt/rh/bpms/config-jboss.cli
COPY config-jboss.sh /opt/rh/bpms/config-jboss.sh
COPY oracle /opt/rh/bpms/oracle
COPY ${jboss_name}.zip /opt/rh/bpms/${jboss_name}.zip

RUN chmod u+x *.sh && ./config-jboss.sh 

RUN rm -rf oracle && rm -rf ${jboss_name}.zip

COPY ${spanners_name}.war /opt/rh/bpms/jboss-eap-6.4/standalone/deployments/${spanners_name}.war

EXPOSE 8080 8043 9999 9990

ENTRYPOINT jboss-eap-6.4/bin/standalone.sh -b 0.0.0.0 -bmanagement=0.0.0.0

