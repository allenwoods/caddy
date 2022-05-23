FROM caddy:builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/greenpau/caddy-security \
    # --with github.com/greenpau/caddy-auth-portal \
    # --with github.com/greenpau/caddy-trace \
    # --with github.com/abiosoft/caddy-hmac \
    # --with github.com/caddy-dns/dnspod \
    # --with github.com/caddy-dns/gandi \
    # --with github.com/caddy-dns/lego-deprecated \
    # --with github.com/caddy-dns/route53 \
    # --with github.com/caddy-dns/alidns \
    # --with github.com/caddy-dns/azure \
    # --with github.com/caddy-dns/digitalocean \
    # --with github.com/caddy-dns/duckdns \
    # --with github.com/caddy-dns/hetzner \
    # --with github.com/caddy-dns/openstack-designate \
    # --with github.com/caddy-dns/vultr \
    # --with github.com/lolPants/caddy-requestid \
    # --with github.com/mholt/caddy-webdav \
    # --with github.com/firecow/caddy-forward-auth \
    # --with github.com/hslatman/caddy-crowdsec-bouncer \
    # --with github.com/abiosoft/caddy-json-parse \
    # --with github.com/caddyserver/replace-response \
    # --with github.com/mholt/caddy-l4
    # --with github.com/RussellLuo/caddy-ext/layer4

FROM caddy:2.5.1-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
