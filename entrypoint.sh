#!/usr/bin/env sh
ssh-keygen -A
/usr/sbin/sshd

mkdir -p /home/dependency-track
ln -s /home/dependency-track /root/.dependency-track

java $JAVA_OPTS -DdependencyTrack.loggingLevel=$LOGGING_LEVEL -jar dependency-track-embedded.war