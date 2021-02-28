ARG vendor=ubuntu
ARG release=groovy
FROM ${vendor}:${release}

ARG release
RUN if test "${release}" = "bionic" -o "${release}" = "buster"; then m2crypto=python-m2crypto; else m2crypto=python3-m2crypto; fi && \
    apt-get update -y && \
    /usr/bin/env DEBIAN_FRONTEND=noninteractive apt-get install -y \
        cdbs \
        devscripts \
        equivs \
        git \
        git-buildpackage \
        osc \
        ${m2crypto} && \
    apt-get clean

COPY run.sh oscrc.enc signing-key.txt.enc Dh_Lib.pm.patch /build/

ARG release
RUN if test "${release}" = "bionic"; then cat /build/Dh_Lib.pm.patch | patch -d /usr/share/perl5/Debian/Debhelper -p 0; fi
