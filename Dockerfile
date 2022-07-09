FROM node:lts-alpine@sha256:554142f9a6367f1fbd776a1b2048fab3a2cc7aa477d7fe9c00ce0f110aa45716

LABEL org.opencontainers.image.source="https://github.com/djmattyg007/doc-link-checker-cli"

# renovate: datasource=npm depName=doc-link-checker-cli
ENV DOC_LINK_CHECKER_CLI_VERSION="1.0.4"

RUN npm install -g "doc-link-checker-cli@${DOC_LINK_CHECKER_CLI_VERSION}"

WORKDIR /data
ENTRYPOINT ["doc-link-checker"]
CMD ["lint"]
