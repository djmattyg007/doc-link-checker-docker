FROM node:lts-alpine@sha256:ef3f47741e161900ddd07addcaca7e76534a9205e4cd73b2ed091ba339004a75

# renovate: datasource=npm depName=doc-link-checker-cli
ENV DOC_LINK_CHECKER_CLI_VERSION="1.0.4"

RUN npm install -g "doc-link-checker-cli@${DOC_LINK_CHECKER_CLI_VERSION}"

WORKDIR /data
ENTRYPOINT ["doc-link-checker"]
CMD ["lint"]
