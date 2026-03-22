FROM sipeed/picoclaw:launcher

# Install nodejs
RUN apk add --no-cache nodejs npm ffmpeg 7zip

# Replace picoclaw with local version
COPY picoclaw /usr/local/bin/picoclaw
RUN chmod +x /usr/local/bin/picoclaw

COPY picoclaw-launcher /usr/local/bin/picoclaw-launcher
RUN chmod +x /usr/local/bin/picoclaw-launcher
