FROM gitpod/workspace-full:latest

USER root

# install Mecab, MeCab-lib, Mecab-ipadic
RUN apt-get update \
 && apt-get install -y git \
 && apt-get install -y mecab \
 && apt-get install -y libmecab-dev \
 && apt-get install -y mecab-ipadic-utf8 \
 && apt-get install -y xz-utils

# install MeCab-ipadic-NEologd
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git \
 && cd mecab-ipadic-neologd \
 && bin/install-mecab-ipadic-neologd -n -y
 
