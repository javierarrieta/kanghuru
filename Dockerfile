# Build args for version pinning
ARG NGINX_VERSION=alpine

FROM nginx:${NGINX_VERSION}

# Security: install security updates
RUN apk update && \
    apk upgrade --no-cache && \
    rm -rf /var/cache/apk/*

# Security: copy only necessary files
COPY ./static /usr/share/nginx/html

# Security: drop root privileges
RUN chown -R nginx:nginx /usr/share/nginx/html /var/cache/nginx /var/log/nginx /var/lib/nginx

USER nginx

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD wget --no-verbose --tries=1 --spider http://localhost/ || exit 1
