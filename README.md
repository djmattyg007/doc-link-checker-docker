# Doc Link Checker for Docker

[![CI](https://github.com/djmattyg007/doc-link-checker-docker/actions/workflows/ci.yaml/badge.svg?branch=main)](https://github.com/djmattyg007/doc-link-checker-docker/actions/workflows/ci.yaml)

## Build

Build the Docker image with the following command:

```
docker build -t ghcr.io/djmattyg007/doc-link-checker .
```

## Usage

The entrypoint of this container is the CLI binary `doc-link-checker`. This means you only need to
do the following to run it with all of the defaults:

```
docker run --rm -v "${PWD}:/data" ghcr.io/djmattyg007/doc-link-checker
```

As an example, to customise the directory it should look at, you would do the following:

```
docker run --rm -v "${PWD}:/data" ghcr.io/djmattyg007/doc-link-checker lint "docs/"
```

For full usage instructions, please see the [CLI readme](https://github.com/djmattyg007/doc-link-checker-cli).

## Contributing

All contributions are welcome! Please note that [Hadolint](https://github.com/hadolint/hadolint) is
used to lint the Dockerfile in CI.

For actual code changes to the tool being run, please see the [CLI tool](https://github.com/djmattyg007/doc-link-checker-cli),
or the [underlying library](https://github.com/djmattyg007/doc-link-checker) that makes all of this
possible.

## License

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, version 3 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see https://www.gnu.org/licenses/.
