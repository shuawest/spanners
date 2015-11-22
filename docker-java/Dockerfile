FROM centos:centos6

RUN yum update -y && yum install -y zip unzip java-1.7.0-openjdk-devel && yum clean all

RUN alternatives --install /usr/bin/java java /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.85.x86_64/jre/bin/java 200000
RUN alternatives --install /usr/bin/javaws javaws /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.85.x86_64/jre/bin/javaws 200000
RUN alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.85.x86_64/jre/bin/javac 200000
