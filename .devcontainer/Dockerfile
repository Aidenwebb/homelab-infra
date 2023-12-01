FROM mcr.microsoft.com/devcontainers/base:bullseye

RUN export DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get upgrade \
    && apt-get install sshpass \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*