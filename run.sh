#!/bin/bash


sudo docker-compose down && \
sudo docker-compose \
    -f docker-compose.yml \
    -f docker-compose.production.yml \
    up -d --build
