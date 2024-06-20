# Use the official Debian latest image as a base
FROM debian:latest

# Install any necessary dependencies
RUN apt-get update \
    && apt-get install -y fortune-mod cowsay openssl \
    && apt-get install -y netcat-traditional \
    && apt-get install -y nmap \
    && apt-get install -y ncat \
    && apt-get clean

ENV PATH="/usr/games:${PATH}"
WORKDIR /usr/local/bin/

# Copy wisecow.sh script to the Docker image
COPY wisecow.sh .

# Copy self-signed certificates into the container
COPY server.crt .
COPY server.key .

# Make wisecow.sh executable (if needed)
RUN chmod +x [[Owisecow.sh

# Expose port 4499 (assuming your application listens on this port)
EXPOSE 4499

# Specify the command to run your application
CMD ["./wisecow.sh"]
