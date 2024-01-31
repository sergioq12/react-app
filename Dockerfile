# set the node image version
FROM node:18-alpine3.15

# set the working directory
WORKDIR /app

# copy the package json file
COPY ./package*.json ./

# install packages
RUN npm install

# Copy all the files
COPY . .

# set the port to 8080
EXPOSE 8080

# run the command to start the app
CMD ["npm", "start"]