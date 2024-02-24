# Specify base image 
FROM node:20.11-alpine

WORKDIR /express-app

# copy package.json first tto the workdir avoid re-installing dependencies everytime the code changes
COPY ./package.json ./

# Running commands 
RUN npm i nodemon -g
RUN npm i

# copy project directory to the container
COPY ./ ./

# use default port for the image 
EXPOSE 8080

# Running start commad to start the server 
CMD [ "npm", "run", "dev" ]
