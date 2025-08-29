# Base image for React
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json & install dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Start dev server
CMD ["npm", "start"]

EXPOSE 3000
