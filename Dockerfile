FROM ubuntu:yakkety

RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y automake autotools-dev g++ git libcurl4-gnutls-dev libfuse-dev libssl-dev libxml2-dev make pkg-config && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN git clone https://github.com/s3fs-fuse/s3fs-fuse.git && \
  cd s3fs-fuse && \
  ./autogen.sh && \
  ./configure && \
  make && \
  make install && \
  cd .. && \
  rm -rf s3fs-fuse

