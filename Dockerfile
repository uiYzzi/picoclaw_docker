FROM sipeed/picoclaw:nightly-launcher

ENV PATH="/root/.local/bin:$PATH"

# Install nodejs
RUN apk add --no-cache nodejs npm ffmpeg 7zip github-cli curl python3 py3-pip && \
    curl -sSL https://github.com/larksuite/cli/releases/download/v1.0.0/lark-cli-1.0.0-linux-amd64.tar.gz | tar -xz -C /usr/local/bin/ lark-cli && \
    chmod +x /usr/local/bin/lark-cli && \
    curl -LsSf https://astral.sh/uv/install.sh | sh
