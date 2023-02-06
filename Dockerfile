FROM node:lts-alpine@sha256:bc329c7332cffc30c2d4801e38df03cbfa8dcbae2a7a52a449db104794f168a3

# renovate: datasource=npm depName=doc-link-checker-cli
ENV DOC_LINK_CHECKER_CLI_VERSION="1.0.4"

RUN npm install -g "doc-link-checker-cli@${DOC_LINK_CHECKER_CLI_VERSION}"

WORKDIR /data
ENTRYPOINT ["doc-link-checker"]
CMD ["lint"]
