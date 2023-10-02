FROM node:lts-alpine@sha256:a315556d82ef54561e54fca7d8ee333382de183d4e56841dcefcd05b55310f46

# renovate: datasource=npm depName=doc-link-checker-cli
ENV DOC_LINK_CHECKER_CLI_VERSION="1.0.4"

RUN npm install -g "doc-link-checker-cli@${DOC_LINK_CHECKER_CLI_VERSION}"

WORKDIR /data
ENTRYPOINT ["doc-link-checker"]
CMD ["lint"]
