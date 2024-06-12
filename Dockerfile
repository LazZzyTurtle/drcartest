# Use the official WordPress image from Docker Hub
FROM wordpress:latest

# Copy your custom WordPress files into the container
COPY . /var/www/html

# Change ownership of the copied files to the www-data user
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 for the web server
EXPOSE 80

# Start the Apache server
CMD ["apache2-foreground"]
