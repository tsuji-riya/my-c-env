FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    wget \
    zsh \
    curl \
    wget \
    vim \

WORKDIR /workspace

CMD ["/bin/zsh"]