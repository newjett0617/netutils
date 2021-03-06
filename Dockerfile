FROM docker.io/library/debian:10

COPY entrypoint.bash /entrypoint.bash
ENTRYPOINT [ "/entrypoint.bash" ]

ENV PACKAGES \
    ca-certificates \
    curl \
    dnsutils \
    git \
    iftop \
    iproute2 \
    less \
    net-tools \
    netcat \
    procps \
    vim \
    wget

RUN apt-get update && \
  apt-get install -y --no-install-recommends ${PACKAGES} && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
