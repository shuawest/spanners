

docker stop oracle-spanners; docker rm oracle-spanners; docker run -p 1522:1521 --name "oracle-spanners" -d docker-oracle-spanners

sleep 20

#docker stop tomcat-spanners; docker rm tomcat-spanners; docker run -i -t -p 8080:8080 -p 8009:8009 --link oracle-spanners:oracleHost --name "tomcat-spanners" docker-tomcat-spanners /bin/bash

docker stop jboss-spanners; docker rm jboss-spanners; docker run -i -t -p 8080:8080 -p 8009:8009 --link oracle-spanners:oracleHost --name "jboss-spanners" docker-jboss-spanners 
