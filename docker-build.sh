

#docker build -t docker-java ./docker-java/

docker build -t docker-oracle-spanners ./docker-oracle-spanners/

mvn clean install -DskipTests=true
cp spanners-mvc/target/spanners-mvc*.war ./docker-tomcat-spanners/

docker build -t docker-tomcat-spanners ./docker-tomcat-spanners/

