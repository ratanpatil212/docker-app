# Base Image
FROM node:18.14.2-alpine3.17

#Specifying working directory
WORKDIR /usr/src/app

# Copying all json files to working directory
COPY package*.json ./

# Scripts
RUN npm install

COPY . .

# Specifying container's internal port
EXPOSE 8080

# Entry point of the application
CMD ["node","index.js"]