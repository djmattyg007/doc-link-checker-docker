FROM node:lts-alpine@sha256:435dcad253bb5b7f347ebc69c8cc52de7c912eb7241098b920f2fc2d7843183d

# renovate: datasource=npm depName=doc-link-checker-cli
ENV DOC_LINK_CHECKER_CLI_VERSION="1.0.4"

RUN npm install -g "doc-link-checker-cli@${DOC_LINK_CHECKER_CLI_VERSION}"

WORKDIR /data
ENTRYPOINT ["doc-link-checker"]
CMD ["lint"]
