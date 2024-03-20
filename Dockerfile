FROM continuumio/miniconda3:23.10.0-1

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl \
    git \
    less \
    rsync \
    unzip \
    vim \
    wget \
    && rm -rf /var/lib/apt/lists/*

ENV CNVPYTOR_VERSION="1.3.1"
RUN pip install --upgrade pip
RUN pip install CNVpytor==$CNVPYTOR_VERSION
RUN cnvpytor -download
