# Use a lightweight Nginx image
FROM nginx:stable-alpine

# Remove the default Nginx welcome page (optional, but good practice)
RUN rm -rf /usr/share/nginx/html/*

# Copy the web application files (your index.html) to the Nginx web root directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# The default command for Nginx is to start the server.
# This CMD is inherited from the base nginx image, so explicitly stating it is optional
# but can be good for clarity.
CMD ["nginx", "-g", "daemon off;"]
