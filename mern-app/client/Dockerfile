# Frontend Dockerfile
FROM node:slim

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install
RUN npm install bootstrap axios react-router-dom

# Copy the rest of the app
COPY . .


# Expose port 3000
EXPOSE 5173

CMD ["npm", "run", "dev"]
