FROM inutano/wget AS downloader

RUN wget -O wla-dx.tar https://github.com/vhelin/wla-dx/tarball/master --progress=dot \
    && mkdir wla-dx \
    && tar -C wla-dx --strip-components=1 -xf wla-dx.tar

RUN cd / \
    && wget -O sdcc.tar.bz2 https://sourceforge.net/projects/sdcc/files/snapshot_builds/amd64-unknown-linux2.5/sdcc-snapshot-amd64-unknown-linux2.5-20200819-11821.tar.bz2 \
    && mkdir sdcc \
    && tar -C sdcc --strip-components=1 -xf sdcc.tar.bz2

FROM debian:buster AS builder

COPY --from=downloader /wla-dx /usr/src/wla-dx

RUN apt-get update && \
    apt-get install --assume-yes cmake

RUN cd /usr/src/wla-dx \
    && mkdir build && cd build && cmake .. \
    && cmake --build . -- -j$(nproc --all) \
    && cmake -P cmake_install.cmake

FROM debian:buster

COPY --from=builder /usr/local/bin/wla-* /usr/local/bin/wlalink /usr/local/bin/wlab /usr/local/bin/
COPY --from=downloader /sdcc /usr/local/

RUN groupadd --gid 1000 dockeruser && \
    adduser --system --shell /bin/bash --uid 1000 --ingroup dockeruser dockeruser

WORKDIR /app
