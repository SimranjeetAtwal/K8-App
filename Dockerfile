# Use the official Debian latest image as a base
FROM debian:latest

# Install any necessary dependencies
RUN apt-get update \
    && apt-get install -y fortune-mod cowsay \
    && apt-get install -y netcat-traditional \
    && apt-get install -y nmap \
    && apt-get install -y ncat

ENV PATH="/usr/games:${PATH}"

# Copy wisecow.sh script to the Docker image
COPY wisecow.sh /usr/local/bin/wisecow.sh

# Make wisecow.sh executable (if needed)
RUN chmod +x /usr/local/bin/wisecow.sh

# Expose port 4499 (assuming your application listens on this port)
EXPOSE 4499

# Specify the command to run your application
CMD ["/usr/local/bin/wisecow.sh"]
