FROM debian:bullseye

# Install ffmpeg and tools
RUN apt update && apt install -y ffmpeg curl tar

# Set MediaMTX version explicitly to avoid URL issues
ENV MTX_VERSION=1.12.3

# Download and install MediaMTX
RUN curl -L -o mediamtx.tar.gz https://github.com/bluenviron/mediamtx/releases/download/v${MTX_VERSION}/mediamtx_v${MTX_VERSION}_linux_amd64.tar.gz && \
    tar -xzf mediamtx.tar.gz && \
    mv mediamtx /usr/local/bin/mediamtx && \
    chmod +x /usr/local/bin/mediamtx && \
    rm -rf mediamtx.tar.gz

WORKDIR /app
CMD ["mediamtx"]

