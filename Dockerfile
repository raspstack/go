FROM raspstack/raspbian:jessie

RUN apt-get update -y && \
    apt-get install -y curl && \
    curl https://storage.googleapis.com/golang/go1.8.1.linux-armv6l.tar.gz > /tmp/go1.8.1.linux-armv6l.tar.gz && \
    tar -C /usr/local -xzf /tmp/go1.8.1.linux-armv6l.tar.gz

ENV PATH="/usr/local/go/bin:${PATH}"

