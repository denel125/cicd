# Use an official Node.js runtime as a parent image
FROM node:14
# Set the working directory inside the container
WORKDIR /app
# Copy package.json and install dependencies
COPY package*.json ./
# create node.js modules layer 
RUN npm install
# Copy the rest of the app code
COPY . .
# Tell Docker which port the app listens on
EXPOSE 5000
# Command to run the app - exec form - PID 1
CMD ["node", "index.js"]
