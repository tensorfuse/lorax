FROM gane5h/lorax:main


RUN apt-get update && apt-get install -y  nginx 
WORKDIR /usr/src/

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for Nginx
EXPOSE 80
COPY lorax-entrypoint.sh /usr/src/
RUN chmod +x /usr/src/lorax-entrypoint.sh
ENTRYPOINT ["/usr/src/lorax-entrypoint.sh"]
