FROM n8nio/n8n:latest-alpine

USER root

# Install Python and build tools on Alpine
RUN apk update && apk add --no-cache \
    python3 \
    py3-pip \
    py3-virtualenv \
    build-base

# Ensure python is available as "python"
RUN ln -sf python3 /usr/bin/python

USER node
