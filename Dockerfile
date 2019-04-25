# Dockerfile for Jupyter

# Base image
#FROM scratch
FROM ubuntu:18.04

# Working directory
WORKDIR /app

# Copy current directory to /app
COPY . /app

# Available ports outside this container
EXPOSE 8000

# Define environment variables
ENV PATH="/app/miniconda3/bin:${PATH}"
ENV J_INSTALLATION_FOLDER="/app/J807"
ENV J_BIN_FOLDER="/app/J807/bin"

# Run it
ENTRYPOINT ["/app/run.sh"]

