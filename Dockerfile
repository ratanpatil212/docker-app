# Base Image
FROM node:slim

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