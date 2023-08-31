FROM ubuntu:22.04
LABEL maintainer="Jonas Råberg"

# Install packages
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Install tfenv
RUN git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv
ENV PATH="/root/.tfenv/bin:${PATH}"

WORKDIR /root
