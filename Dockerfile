FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    wget \
    zsh \
    curl \
    wget \
    vim \
    neovim

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

RUN chsh -s $(which zsh)

ENV USER=root
ENV SHELL=/bin/zsh

WORKDIR /workspace

CMD ["zsh"]