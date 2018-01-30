FROM ubuntu:latest

RUN apt update && \
    apt install -y \
    curl unzip libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libssl-dev libffi-dev python-dev build-essential

RUN useradd -ms /bin/bash terraform

USER terraform

RUN cd ~/ && \
    curl -o terraform.zip https://releases.hashicorp.com/terraform/0.11.2/terraform_0.11.2_linux_amd64.zip && \
    unzip terraform.zip && \
    rm terraform.zip

# RUN curl -L https://aka.ms/InstallAzureCli | bash

USER root

RUN apt-get install azure-cli