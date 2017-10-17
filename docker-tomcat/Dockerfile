FROM  centos:7

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# System update
RUN yum -y update && \
  yum clean all && \
  yum install wget net-tools -y

# Setting Timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

# Install Java8
RUN yum install -y java-1.8.0-openjdk

# Install tomcat8
RUN mkdir -p /usr/local && \
  wget -O /tmp/apache-tomcat-8.5.23.tar.gz http://apache.mirror.cdnetworks.com/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz && \
  tar xzvf /tmp/apache-tomcat-8.5.23.tar.gz -C /usr/local && \
  mv /usr/local/apache-tomcat-8.5.23 /usr/local/tomcat && \
  rm -rf /tmp/apache-tomcat-8.5.23.tar.gz

# Configure tomcat
RUN useradd --user-group --system --home-dir /usr/local/tomcat tomcat  && \
  chown -R tomcat:tomcat /usr/local/tomcat

EXPOSE 8080

CMD ["catalina.sh", "run"]
