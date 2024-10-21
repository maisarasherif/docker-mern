# Backend Dockerfile
FROM node:slim

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install
RUN npm install express mongoose cors nodemon dotenv

# Copy the rest of the backend code
COPY . .

# Expose the port for the backend API
EXPOSE 5000

# Start the server
CMD ["npm", "start"]
