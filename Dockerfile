# Use a minimal base image for running the executable
FROM debian:bullseye-slim

# Copy the executable to the container
COPY myapp-cowsay-go-amd64 /usr/local/bin/

COPY myapp-cowsay-go-arm64 /usr/local/bin/

# Set the executable permissions
RUN chmod +x /usr/local/bin/myapp-cowsay-go-amd64
RUN chmod +x /usr/local/bin/myapp-cowsay-go-arm64

# Set the entry point to run the executable
ENTRYPOINT ["/usr/local/bin/myapp-cowsay-go-amd64", "/usr/local/bin/myapp-cowsay-go-arm64"]

