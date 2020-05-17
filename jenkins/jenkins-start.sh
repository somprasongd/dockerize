docker run -d --name jenkins \
	-p 8080:8080 -p 5000:50000 \
	-v C:/Users/sompr/docker/volumes/jenkins_home:/var/jenkins_home \
	jenkins/jenkins:lts