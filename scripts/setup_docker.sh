echo "## Add user pi to docker group"
sudo usermod -aG docker Pi
echo "## Check docker Version and Info"
docker version
docker info

