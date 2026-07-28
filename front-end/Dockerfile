# Base image - lightweight Node.js
FROM node:16-alpine

# Working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (same caching trick as backend)
COPY package*.json ./
RUN npm install

# Copy the rest of the frontend code
COPY . .

EXPOSE 3000

# Start the React dev server
CMD ["npx", "react-scripts", "start"]