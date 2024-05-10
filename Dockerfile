# Define base image
FROM node:latest

# Define work directory
WORKDIR /usr/app

# Copy package.json and package-lock.json
COPY package*.json .

# Install dependencies
RUN npm install

# Copy all files
COPY . .

# # Expose port
# EXPOSE 5055

# Run the app
CMD ["npm", "start"]