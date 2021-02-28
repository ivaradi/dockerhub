ARG vendor=ubuntu
ARG release=groovy
FROM ${vendor}:${release}

RUN apt-get update -y && \
    /usr/bin/env DEBIAN_FRONTEND=noninteractive apt-get install -y \
        cdbs \
        devscripts \
        equivs \
        git \
        git-buildpackage \
        osc \
        python3-m2crypto && \
    apt-get clean

COPY run.sh oscrc.enc signing-key.txt.enc /build/
