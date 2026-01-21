FROM n8nio/n8n:latest

USER root

# Install Python and build tools (Debian-based image)
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Ensure python is available as "python"
RUN ln -sf /usr/bin/python3 /usr/bin/python

USER node
