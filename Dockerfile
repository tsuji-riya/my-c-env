FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    wget \
    zsh \
    curl \
    wget \
    vim \
    neovim \
    yarn \ 
    python3 \ 
    cargo \ 
    ripgrep \ 
    alpine-sdk

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
RUN chsh -s $(which zsh)

RUN LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/release-1.4/neovim-0.9/utils/installer/install.sh) --no-install-dependencies
RUN export PATH="$HOME/.local/bin:$PATH"

ENV USER=root
ENV SHELL=/bin/zsh

WORKDIR /workspace

CMD ["zsh"]