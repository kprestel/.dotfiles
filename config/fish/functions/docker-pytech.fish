function docker-pytech.fish
  docker run -d -p 27017:27017 -v mongodata:/data/db pytech:Dockerfile
end
