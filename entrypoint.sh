#!/bin/sh

# Store the input command
run_cmd="$@"

# Create a signal trap function
graceful_shutdown() {
  printf "\nReceived signal, stopping httpd...\n"
  killall httpd
  exit 0
}

# Set the signal trap
trap "graceful_shutdown" SIGTERM SIGINT

# Start the httpd process in the background
$run_cmd &
httpd_pid=$!
wait $httpd_pid
