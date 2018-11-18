# GROUP YOURSELF BY Operating System
# Describe images !!!

# go here
http://j.mp/pink-docker

# Hello World
```
docker run hello-world
```
# Start an isolated container with a command line ( -it )
# it will remove itself when exiting ( --rm )
```
docker run -it --rm ubuntu bin/bash
docker run -it --rm centos bin/bash
docker run -it --rm alpine /bin/ash
```

# List all running containers
```
docker ps -a
```

# run terminal in existing container
```
docker ps -a
docker exec -it <CONTAINER ID> bin/bash
```

# Docker cleanup

# Kill all running containers
```
docker kill $(docker ps -q)
```
# Delete all stopped containers (including data-only containers)
```
docker rm $(docker ps -a -q)
```
# Delete all 'untagged/dangling' (<none>) images
```
docker rmi $(docker images -q -f dangling=true)
```
# Delete ALL images
```
docker rmi $(docker images -q)
```

# More reading
https://medium.freecodecamp.org/demystifying-containers-101-a-deep-dive-into-container-technology-for-beginners-d7b60d8511c1


# Dockerfile
```
FROM python:3.6
COPY app /app
CMD python /app/app.py
```

#Build
```
docker build -t pink  .
```

# Run
```
docker run -it --rm pink bin/bash
```

# Run app
```
docker run -it --rm pink
```

# real-app.py - https://genderize.io/
```
import requests
r = requests.get("https://api.genderize.io/?name=peter")
print(r.text)
```

# more-real-app.py
```
import requests
import os
r = requests.get("https://api.genderize.io/?name=peter")
print(r.text)
```
