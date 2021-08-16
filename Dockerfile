FROM ubuntu:16.04
MAINTAINER Sebastien Langoureaux <linuxworkgroup@hotmail.com> base on JP <jportela@abyssal.eu>
ENV LANG en_US.utf8

ENV LC_ALL C

RUN apt-get update && apt-get install --no-install-recommends -yq \
    python3-all \
    python3-pip \
    python3-nose \
    python3-mock \
    python3-setuptools \
    libpq-dev \
    curl \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*


ENV PYTHONIOENCODING utf-8
WORKDIR /code
