# Use an official Node.js runtime as a parent image
FROM node:20-alpine AS base

# Set the working directory
WORKDIR /root/app

# Install dependencies
COPY functions/package.json .
RUN apk add --no-cache npm \
    && npm set progress=false \
    && npm config set depth 0 \
    && npm install --only=production

# Copy production node_modules to a separate location
RUN cp -R node_modules prod_node_modules

# Install all dependencies including dev dependencies
RUN npm install

# Stage for running tests
FROM base AS test
COPY . .
RUN npm run test

# Final stage
FROM node:20-alpine AS final

# Set the working directory
WORKDIR /root/app

# Copy production node_modules from the dependencies stage
COPY --from=base /root/app/prod_node_modules ./node_modules

# Copy the rest of the application code
COPY . .

# Change to the functions directory
WORKDIR /root/app/functions

# List the contents of the functions directory (for debugging purposes)
RUN ls -al

# Expose the application port
EXPOSE 3000

# Define the command to run the application
ENTRYPOINT [ "npm", "start" ]