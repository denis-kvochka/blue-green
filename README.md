# Blue-Green Minimalist Web Server

A minimal Busybox httpd based web server with an either blue or green background color. The web server runs on port 8080 and serves a simple HTML page indicating the chosen color as the background.
![image](https://github.com/kirbah/blue-green/assets/3257689/3fb80c2c-1e00-434b-8f0e-902321a4f8c8)

## Installation

To run this web server, you need to have Docker installed on your system.

## Usage

To start a blue/green web server container:

```bash
docker run -d --name my-blue  -p 80:8080 docker.io/kirbah/blue-green:blue
docker run -d --name my-green -p 82:8080 docker.io/kirbah/blue-green:green
```

It is possible to check requests logs via

```bash
docker logs -f my-green
```
