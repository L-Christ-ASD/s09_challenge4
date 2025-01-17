# Use a minimal base image for running the executable
FROM debian:bullseye-slim

# Define a build argument for the architecture
ARG ARCH

# Copy the executable to the container based on the architecture
COPY myapp-cowsay-go-${ARCH} /usr/local/bin/

# Set the executable permissions
RUN chmod +x /usr/local/bin/myapp-cowsay-go-${ARCH}

# Set the entry point to run the executable
ENTRYPOINT ["/usr/local/bin/myapp-cowsay-go-${ARCH}"]


