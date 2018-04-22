# Docker image for application development with Node.js

## Building

### Build a docker image
```
sudo docker build -t bskton/nodejs .
```

### Log in to the Docker public registry
```
sudo docker login
```

### Upload the image to the repository
```
sudo docker push bskton/nodejs
```

### Using

#### A new application initialization
```
sudo docker run --rm -it -v $PWD:/app -u $(id -u):$(id -g) \
bskton/nodejs npm init
```

#### Running an application in development environment
```
sudo docker run --name nodejs-app --rm -it -v $PWD:/app -p 3000:3000 -u $(id -u):$(id -g) \
bskton/nodejs nodemon server.js
```

#### Installing node packages for the application
```
sudo docker run --rm -it -v $PWD:/app -u $(id -u):$(id -g) \
bskton/nodejs npm install
```
