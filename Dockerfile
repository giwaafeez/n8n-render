FROM n8nio/n8n:latest

USER root

# Install Python 3 and required tools
RUN apk add --no-cache \
    python3 \
    py3-pip \
    py3-virtualenv \
    build-base

# Ensure python is available as "python"
RUN ln -sf python3 /usr/bin/python

USER node
