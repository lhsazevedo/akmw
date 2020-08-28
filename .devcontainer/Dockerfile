FROM inutano/wget AS downloader

RUN wget -O wla-dx.tar https://github.com/vhelin/wla-dx/tarball/master --progress=dot \
    && mkdir wla-dx \
    && tar -C wla-dx --strip-components=1 -xf wla-dx.tar

# RUN cd / \
#     && wget -O sdcc.tar.bz2 https://sourceforge.net/projects/sdcc/files/snapshot_builds/amd64-unknown-linux2.5/sdcc-snapshot-amd64-unknown-linux2.5-20200819-11821.tar.bz2 \
#     && mkdir sdcc \
#     && tar -C sdcc --strip-components=1 -xf sdcc.tar.bz2

RUN wget -O png2tile.tar https://github.com/yuv422/png2tile/tarball/master --progress=dot \
    && mkdir png2tile \
    && tar -C png2tile --strip-components=1 -xf png2tile.tar

COPY gfxcomp_phantasystargaiden.cpp /png2tile/compressors/gfxcomp_phantasystargaiden.cpp

FROM debian:buster AS builder

RUN apt-get update \
    && apt-get install --assume-yes build-essential cmake libpng-dev zlib1g zlib1g-dev

COPY --from=downloader /wla-dx /usr/src/wla-dx
COPY --from=downloader /png2tile /usr/src/png2tile
COPY tile2png /usr/src/tile2png

RUN cd /usr/src/wla-dx \
    && mkdir build && cd build && cmake .. \
    && cmake --build . -- -j$(nproc --all) \
    && cmake -P cmake_install.cmake

RUN cd /usr/src/png2tile \
    && cmake . \
    && make

RUN cd /usr/src/tile2png \
    && cmake . \
    && make

FROM debian:buster

RUN apt-get update \
    && apt-get install --assume-yes libpng-dev zlib1g

COPY --from=builder /usr/local/bin/wla-* /usr/local/bin/wlalink /usr/local/bin/wlab /usr/local/bin/
# COPY --from=downloader /sdcc /usr/local/
COPY --from=builder /usr/src/png2tile/png2tile /usr/local/bin/
COPY --from=builder /usr/src/tile2png/tile2png /usr/local/bin/

RUN groupadd --gid 1000 dockeruser && \
    adduser --system --shell /bin/bash --uid 1000 --ingroup dockeruser dockeruser

WORKDIR /app
