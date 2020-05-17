#!/bin/bash
#-v C:/Users/sompr/docker/volumes/sonarqube/conf:/opt/sonarqube/conf \
docker run -d --name sonarqude \
 -p 9000:9000 \
 -v C:/Users/sompr/docker/volumes/sonarqube/data:/opt/sonarqube/data \
 -v C:/Users/sompr/docker/volumes/sonarqube/logs:/opt/sonarqube/logs \
 -v C:/Users/sompr/docker/volumes/sonarqube/extensions:/opt/sonarqube/extensions \
 sonarqube