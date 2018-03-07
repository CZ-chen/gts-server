FROM sonatype/nexus3

WORKDIR /tmp

#安装maven
RUN wget 'http://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.5.2/binaries/apache-maven-3.5.2-bin.zip'
RUN unzip apache-maven-3.5.2-bin.zip
RUN mv /tmp/apache-maven-3.5.2 /opt/maven
ADD /data /data
RUN export PATH=$PATH:/opt/maven/bin
rm -f /tmp/apache-maven-3.5.2-bin.zip

