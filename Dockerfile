FROM docker.io/library/debian:10

COPY entrypoint.bash /entrypoint.bash
ENTRYPOINT [ "/bin/bash", "/entrypoint.bash" ]

ENV PACKAGES \
    ca-certificates \
    curl \
    dnsutils \
    git \
    iftop \
    less  \
    net-tools \
    netcat \
    procps \
    vim \
    wget

RUN apt-get update && \
  apt-get install -y --no-install-recommends ${PACKAGES} && \
  rm -rf /var/lib/apt/lists/*
