FROM ubuntu:22.04
LABEL maintainer="Jonas Råberg"
LABEL org.opencontainers.image.source https://github.com/jraberg/ubuntu-terraform

# Install packages
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    git \
    unzip \
    yamllint \
    shellcheck \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install tfenv
RUN git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv
ENV PATH="/root/.tfenv/bin:${PATH}"

# Install tflint
RUN curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash
