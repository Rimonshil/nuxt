# Use the official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

COPY . ./

# Install the dependencies
RUN npm install


# Expose the port that Nuxt.js will run on
EXPOSE 3000

# Command to run the Nuxt.js application
CMD ["npm", "run", "dev"]
