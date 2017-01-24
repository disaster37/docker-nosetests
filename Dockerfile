FROM ubuntu:16.04
MAINTAINER Sebastien Langoureaux <linuxworkgroup@hotmail.com> base on JP <jportela@abyssal.eu>
ENV LANG en_US.utf8

RUN apt-get update && apt-get install --no-install-recommends -yq \
    python3-all \
    python3-pip \
    python3-nose \
    python3-mock \
    libpq-dev \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

<<<<<<< HEAD
# Install some usefull pip module
pip install elasticsearch
=======
# Add some usefull python module
RUN pip install elasticsearch
>>>>>>> release/3.0.1

ENV PYTHONIOENCODING utf-8
WORKDIR /code
