FROM docker-java

ENV tomcat_name apache-tomcat-8.0.18
ENV spanners_name spanners-mvc-3.4-SNAPSHOT

RUN mkdir -p /opt/rh/bpms/
WORKDIR /opt/rh/bpms/

COPY ${tomcat_name}.zip /opt/rh/bpms/${tomcat_name}.zip
RUN unzip -q ${tomcat_name}.zip && mv ${tomcat_name} tomcat && chmod u+x tomcat/bin/*.sh && rm -rf ${tomcat_name}.zip

COPY ojdbc6.jar /opt/rh/bpms/tomcat/lib/ojdbc6.jar
COPY tomcat-users.xml /opt/rh/bpms/tomcat/conf/tomcat-users.xml
COPY context.xml /opt/rh/bpms/tomcat/conf/context.xml
COPY setenv.sh /opt/rh/bpms/tomcat/bin/setenv.sh
COPY ${spanners_name}.war /opt/rh/bpms/tomcat/webapps/${spanners_name}.war

EXPOSE 8080 8009 8005

ENTRYPOINT /opt/rh/bpms/tomcat/bin/startup.sh; history -s "less /opt/rh/bpms/tomcat/logs/catalina.out"; bash
