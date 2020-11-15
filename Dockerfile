FROM digitalocean/doctl as doctl

FROM alpine/terragrunt
RUN apk add --no-cache curl
#aws
RUN apk add --no-cache aws-cli
#doctl
COPY --from=doctl /app/doctl /usr/local/bin/