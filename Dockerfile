FROM alpine

RUN apk add --no-cache tini busybox-extras

# Set environment variable
ARG COLOR
ENV COLOR ${COLOR}

# Create the web root directory
RUN mkdir /web_root

# Set up a simple index.html file with a ${COLOR} background
COPY index.html.template /web_root/index.html
RUN sed -i "s/{{COLOR}}/${COLOR}/g" /web_root/index.html

# Expose the port for the http server
EXPOSE 80

# Start the http server, handle signals using tini
ENTRYPOINT ["/sbin/tini", "-g", "--"]
CMD ["httpd", "-f", "-h", "/web_root", "-p", "80"]
