#!/usr/bin/env bash

set -ex
set -o pipefail

pushd "$(dirname "$(dirname "$(dirname "$(realpath "${0}")")")")"

markdownlint \
	--config .markdownlint.yaml \
	--ignore README.md \
	--ignore node_modules/ \
	./*.md \
	./**/*.md

popd
