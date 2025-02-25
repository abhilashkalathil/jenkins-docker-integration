# Use Nginx as the base image
FROM nginx:latest
 
# Copy the index.html file to the container
COPY index.html /usr/share/nginx/html/
 
# Expose port 80
EXPOSE 80

