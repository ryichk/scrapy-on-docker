FROM debian:buster

RUN apt-get update && \
    apt-get install --assume-yes --no-install-recommends \
            gcc \
            libffi-dev \
            libssl-dev \
            libxml2-dev \
            libxslt1-dev \
            python3-pip \
            python3-dev \
            zlib1g-dev \
            && \
    rm -rf /var/cache/apt/* /var/lib/apt/lists/* && \
    rm -rf /tmp/* /var/tmp/* && \
    python3 -m pip install --no-cache-dir --upgrade \
        setuptools \
        wheel \
        && \
    python3 -m pip install --upgrade pip && \
    python3 -m pip install --no-cache-dir --upgrade scrapy

WORKDIR /app
