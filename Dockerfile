# Use an official nginx image as the base image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove the default Nginx HTML files
RUN rm -rf ./*
RUN apt-get update && apt-get install -y sonar-scanner

# Copy the website files to the container
COPY . .

# Expose the default HTTP port
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]

