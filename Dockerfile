FROM alpine:3.7
ARG BASE_VERSION
RUN apk update && apk add curl unzip && \
    curl -O https://releases.hashicorp.com/packer/${BASE_VERSION}/packer_${BASE_VERSION}_linux_amd64.zip && \
    unzip packer_${BASE_VERSION}_linux_amd64.zip -d /bin

COPY inc/entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
