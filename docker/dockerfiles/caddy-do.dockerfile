# Use a basic golang image as a builder
FROM golang:alpine AS builder

# Install git since it doesn't come with alpine
RUN apk add --no-cache git

# Install xcaddy
RUN go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest

# Build Caddy with the caddy-dns/digitalocean module
# Other modules could be added here too
RUN xcaddy build \
      --with github.com/caddy-dns/digitalocean@master \
      --output /usr/bin/caddy

# Start a new stage from caddy:2-alpine to get a clean image
FROM caddy:2-alpine

# Copy the newly-built Caddy binary from the builder stage
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
