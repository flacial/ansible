FROM ubuntu:latest
WORKDIR /usr/local/bin

# Ignore the selection of option when installing stuff
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y software-properties-common && apt-add-repository -y ppa:ansible/ansible && apt-add-repository -y ppa:neovim-ppa/unstable && apt update && apt install -y curl git ansible build-essential neovim

# copy files from this directory to the container
COPY . .
