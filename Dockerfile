FROM node:lts-alpine@sha256:aadb411a5d398d2141f36a61f469ab91b971e43988d6c74aa5204986e5fe18a1

LABEL org.opencontainers.image.source="https://github.com/djmattyg007/doc-link-checker-cli"

# renovate: datasource=npm depName=doc-link-checker-cli
ENV DOC_LINK_CHECKER_CLI_VERSION="1.0.4"

RUN npm install -g "doc-link-checker-cli@${DOC_LINK_CHECKER_CLI_VERSION}"

WORKDIR /data
ENTRYPOINT ["doc-link-checker"]
CMD ["lint"]
