FROM nginx:latest

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy static assets
COPY index.html /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets/


# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]