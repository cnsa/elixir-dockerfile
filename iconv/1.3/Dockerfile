FROM elixir:1.3.4
MAINTAINER Alexander Merkulov @merqlove

WORKDIR /tmp

# Install local Elixir hex and rebar
RUN /usr/local/bin/mix local.hex --force 
RUN /usr/local/bin/mix local.rebar --force

RUN apt-get update -qq > /dev/null 2>&1 && \
    apt-get install -qqy imagemagick libtool-bin make automake > /dev/null 2>&1 && \
    wget -q https://gist.githubusercontent.com/merqlove/eda0bd9511fce0d319e6efb152f8c68d/raw/aab4e897a6233b38c4252a9ca8db2641aad50874/iconv_install_ubuntu14.sh && \
    chmod +x iconv_install_ubuntu14.sh > /dev/null 2>&1 && \
    ./iconv_install_ubuntu14.sh && \
    rm -f ./iconv_install_ubuntu14.sh && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /
