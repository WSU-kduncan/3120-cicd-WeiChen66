sudo docker stop site
sudo docker ps -a
sudo docker rm site
sudo dockr ps -a
sudo docker pull weichen66/ceg3120:latest
sudo docker images
sudo docker run -d -p 80:80 --name site weichen66/ceg3120:latest
