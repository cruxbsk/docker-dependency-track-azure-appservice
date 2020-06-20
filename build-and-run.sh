#!/usr/bin/env bash
docker build -t dependency-track-azure-appservice .
docker run -it -p 127.0.0.1:8080:80/tcp -p 127.0.0.1:2222:2222/tcp --rm dependency-track-azure-appservice