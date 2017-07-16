function aws-up
  rsync -avL --progress ~/workspace/site/* ec2-user@34.202.69.127:/home/ec2-user/site
end
