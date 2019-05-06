FROM node:10

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /usr/src/app/server

# Installing dependencies
COPY package*.json ./
RUN npm install

# Copying source files
COPY . .

# Building app
# RUN npm run build
EXPOSE 4444

# Running the app
CMD [ "npm", "run", "start" ]