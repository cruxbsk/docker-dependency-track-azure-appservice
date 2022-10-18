ARG DEPENDENCY_TRACK_VERSION=4.6.0
FROM owasp/dependency-track:$DEPENDENCY_TRACK_VERSION
LABEL maintainer="coderpatros@outlook.com"

ENV LOGGING_LEVEL=INFO
ENV JAVA_OPTS=-Xmx4G

USER root

# add app service ssh access
RUN apk add --no-cache \
        openssh-server \
    && echo "root:Docker!" | chpasswd

COPY sshd_config /etc/ssh/sshd_config
COPY entrypoint.sh /entrypoint.sh

EXPOSE 8080 2222
ENTRYPOINT [ "/entrypoint.sh" ]
