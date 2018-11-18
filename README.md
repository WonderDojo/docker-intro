# Docker workshop
GROUP YOURSELF BY Operating System
Describe images !!!

Quick gist with installation, go here
http://j.mp/pink-docker

# Run `Hello World`
```
docker run hello-world
```

# Os specific images
 Start an isolated container with a command line ( -it ) it will remove itself when exiting ( --rm )
```
docker run -it --rm ubuntu bin/bash
docker run -it --rm centos bin/bash
docker run -it --rm alpine /bin/ash
```

# Basic commands
List all running containers
```
docker ps -a
```

Run terminal in existing container
```
docker ps -a
docker exec -it <CONTAINER ID> bin/bash
```

# Docker cleanup

Kill all running containers
```
docker kill $(docker ps -q)
```
Delete all stopped containers (including data-only containers)
```
docker rm $(docker ps -a -q)
```
Delete all 'untagged/dangling' (<none>) images
```
docker rmi $(docker images -q -f dangling=true)
```
Delete ALL images
```
docker rmi $(docker images -q)
```

## More reading
https://medium.freecodecamp.org/demystifying-containers-101-a-deep-dive-into-container-technology-for-beginners-d7b60d8511c1

# Part 2 - Making an image

Make a file called `Dockerfile` in a folder
```
FROM python:3.6
COPY app /app
ENV NAME Nina
RUN pip install requests
WORKDIR /app
CMD python app.py
```

Build the image
```
docker build -t pink  .
```

Run the image you created
```
docker run -it --rm pink bin/bash
```

Run the app in the container
```
docker run -it --rm pink
```

More code in `real-app.py` see https://genderize.io/
```
import requests
r = requests.get("https://api.genderize.io/?name=mariana")
print(r.text)
```

## Env variables
Run docker with env variable defined
```
docker run --env NAME="Eva" -it --rm pink bin/bash
```
Even more code for `more-real-app.py`
```
import requests
import os
name=os.getenv('NAME', "Ivy")
r = requests.get("https://api.genderize.io/?name="+name)
print(r.text)
```

# command line

## Print Working Directory
pwd

## List what is inside current folder
ls -l

## Create empty directory
mkdir <directory name>

## Change directory
cd <directory name>

## Create empty file
touch <filename>

## List file content
cat <filename>
less <filename>

## Print stuff
echo "HI!"

## Remove folder
rm -r apple/
