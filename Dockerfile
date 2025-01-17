# Use a minimal base image for running the executable
FROM debian:bullseye-slim

# Copy the executable to the container
#COPY myapp-cowsay-go /usr/local/bin/myapp-cowsay-go

COPY myapp-cowsay-go-${ARCH} /usr/local/bin/
# Set the executable permissions
RUN chmod +x /usr/local/bin/myapp-cowsay-go-${ARCH}

# Set the entry point to run the executable
ENTRYPOINT ["/usr/local/bin/myapp-cowsay-go-${ARCH}"]

