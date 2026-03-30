FROM sipeed/picoclaw:nightly-launcher

# Install nodejs
RUN apk add --no-cache nodejs npm ffmpeg 7zip github-cli curl && \
    curl -sSL https://github.com/larksuite/cli/releases/download/v1.0.0/lark-cli-1.0.0-linux-amd64.tar.gz | tar -xz -C /usr/local/bin/ lark-cli && \
    chmod +x /usr/local/bin/lark-cli
