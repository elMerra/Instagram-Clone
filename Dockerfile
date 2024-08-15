# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /Users/user/Desktop/InstagramClone  # Updated to a more appropriate path

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the necessary port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]


