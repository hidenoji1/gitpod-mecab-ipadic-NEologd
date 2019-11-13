FROM gitpod/workspace-full:latest

USER root

# install mecab libmecab-dev mecab-ipadic-utf8 git make curl xz-utils file
RUN apt-get update \
 && apt-get install -y mecab \
 && apt-get install -y libmecab-dev \
 && apt-get install -y mecab-ipadic-utf8 \
 && apt-get install -y git \
 && apt-get install -y make \
 && apt-get install -y curl \
 && apt-get install -y xz-utils \
 && apt-get install -y file

# install MeCab-ipadic-NEologd
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git \
 && cd mecab-ipadic-neologd \
 && bin/install-mecab-ipadic-neologd -n -y
 
