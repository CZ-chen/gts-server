FROM sonatype/nexus3

WORKDIR /tmp

USER root
RUN yum install wget

#安装maven
RUN wget 'http://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.5.2/binaries/apache-maven-3.5.2-bin.zip'
RUN unzip apache-maven-3.5.2-bin.zip
RUN mv /tmp/apache-maven-3.5.2 /opt/maven
ADD /data /data
RUN export PATH=$PATH:/opt/maven/bin
RUN rm -f /tmp/apache-maven-3.5.2-bin.zip

#安装nodejs
RUN wget 'https://nodejs.org/dist/v8.10.0/node-v8.10.0-linux-x64.tar.xz'
RUN tar -xvJf node-v8.10.0-linux-x64.tar.xz
RUN mv /tmp/node-v8.10.0-linux-x64 /opt/nodejs
RUN export PATH=$PATH:/opt/nodejs/bin
RUN rm -f /tmp/node-v8.10.0-linux-x64.tar.xz


