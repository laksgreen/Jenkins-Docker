Jenkins Master in Docker Container
-----------------------------------
  
Build the container image with version

$ sudo docker build -t jenkins-image:v1 .

$ sudo docker run -p 8080:8080 -p 50000:50000  jenkins-image:v1
or
$ sudo docker run -p 8080:8080 -p 50000:50000 --name jenkins-master -d jenkins-image:v1

Use the docker container logs with "watch" command

$ watch docker container logs jenkins-master

Get Jenkins administrator password for initial setup, execute the command below. The password looks like- 5v8b2f903c1ard0f895e2d09739r0k54

$ docker container exec -it jenkins-master cat /var/jenkins_home/secrets/initialAdminPassword

Install Suggested Plugins - Find most useful plugins are will be installed from the Jenkins community,

Create First Admin User -  Enter the Username, Password and E-mail address of admin user

Instance Configuration -  Verify the Jenkins URL and click on the button "Save and Finish"

That's it. The Jenkins is Ready to use.
