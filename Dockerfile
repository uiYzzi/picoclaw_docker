FROM sipeed/picoclaw:launcher

ENV PATH="/root/.local/bin:$PATH"

# Install system packages
RUN apk add --no-cache nodejs npm ffmpeg 7zip github-cli curl python3 py3-pip

# Install lark-cli
RUN curl -sSL https://github.com/larksuite/cli/releases/download/v1.0.0/lark-cli-1.0.0-linux-amd64.tar.gz | tar -xz -C /usr/local/bin/ lark-cli && \
    chmod +x /usr/local/bin/lark-cli

# Install agent-browser
RUN npm install -g agent-browser

# Install uv
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# Install Python packages via pip
RUN pip3 install --no-cache-dir --break-system-packages pypdf pdfplumber reportlab pandas
