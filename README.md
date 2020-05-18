Inspired by https://github.com/Ennexa/docker-resque-web

# Resque Web with Scheduler Tab in Docker
This project is a Docker container for Resque Web. The container is based on debian:wheezy. It installs `ruby 2.1` using apt-get and then installs the resque-web gem.

## Getting the container

To download the container run

    docker pull jimmynguyc/resque-web-scheduler:latest
    docker pull jimmynguyc/resque-web-scheduler:dynamic-latest  # Resque::Scheduler.dynamic = true
	
## Using the container

Run the container with the same options you use for resque-web. The options -F (run in foreground) and -L (do not launch browser) are included by default.
If no options are provided, the help screen for resque-web will be displayed.

To run it once

    docker run --rm -p 5678:5678 jimmynguyc/resque-web-scheduler:latest -r redis://172.17.1.1:6379

To run the container as a background process run

    docker run -d --restart=always --name resque-web -p 5678:5678 jimmynguyc/resque-web-scheduler:latest -r redis://172.17.1.1:6379

**NB:** In the above examples, replace `172.17.1.1` with the ip address/hostname of your redis server.
