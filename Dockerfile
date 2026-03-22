FROM sipeed/picoclaw:launcher

# Install nodejs
RUN apk add --no-cache nodejs npm ffmpeg 7zip
