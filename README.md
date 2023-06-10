# Blue-Green Minimalist Web Server

A minimal web server based on Alpine Linux with an either blue or green background color. The web server runs on port 80 and serves a simple HTML page indicating the chosen color as the background.

## Installation

To run this web server, you need to have Docker installed on your system.

## Usage

To start a blue/green web server container:

```bash
docker run -d --name my-blue  -p 80:80 docker.io/kirbah/blue-green:blue
docker run -d --name my-green -p 82:80 docker.io/kirbah/blue-green:green
