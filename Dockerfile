FROM sipeed/picoclaw:launcher

# Install nodejs and bun
RUN apk add --no-cache nodejs npm && \
    npm install -g bun