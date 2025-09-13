FROM tomcat:10-jdk21
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN apt-get update \
	&& apt install -y maven postgresql-common \
	&& /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh -y \
	&& apt install -y \
	postgresql-client-16 \
	&& rm -rf /var/cache/apk/*
    
COPY repo/biblivre /repo/biblivre
RUN cd /repo/biblivre && mvn clean package
RUN rm -rf "${CATALINA_HOME}/webapps/ROOT"
RUN cp /repo/biblivre/target/Biblivre6.war $CATALINA_HOME/webapps
RUN rm -r /repo
ENV JAVA_OPTS="-XX:+UnlockExperimentalVMOptions --enable-preview"
EXPOSE 8080
CMD ["catalina.sh", "run"]