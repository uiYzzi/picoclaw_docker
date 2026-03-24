FROM sipeed/picoclaw:nightly-launcher

# Install nodejs
RUN apk add --no-cache nodejs npm ffmpeg 7zip github-cli
