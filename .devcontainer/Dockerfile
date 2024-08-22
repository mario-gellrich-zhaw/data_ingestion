# Use the base Ubuntu image which includes Docker
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install Python 3.11
RUN apt-get update && apt-get install -y \
    software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt-get update && apt-get install -y \
    python3.11 \
    python3.11-venv \
    python3.11-dev \
    python3-pip \
    && ln -s /usr/bin/python3.11 /usr/bin/python
