# Use busybox as the base image
FROM busybox:stable-musl

# Set environment variable
ARG COLOR
ENV COLOR=${COLOR}

ARG COMMENT
ENV COMMENT=${COMMENT}

# Create the web root and scripts directories, add a new user (httpd)
RUN mkdir /web_root /scripts && \
    adduser -D -g 'httpd' httpd

# Copy the entrypoint script
COPY entrypoint.sh /scripts/entrypoint.sh
RUN chmod +x /scripts/entrypoint.sh

# Set up a simple index.html file with a ${COLOR} background
COPY index.html.template /web_root/index.html
RUN sed -i "s/{{COLOR}}/${COLOR}/g" /web_root/index.html && \
    sed -i "s/{{COMMENT}}/${COMMENT}/g" /web_root/index.html && \
    chown -R httpd /web_root

# Expose the port for the http server
EXPOSE 8080

# Run BusyBox httpd, foreground (-f), access logs printed to STDOUT (-v)
USER httpd
ENTRYPOINT ["/scripts/entrypoint.sh"]
CMD ["httpd", "-f", "-v", "-h", "/web_root", "-p", "8080"]
