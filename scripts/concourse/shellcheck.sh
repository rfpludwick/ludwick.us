#!/usr/bin/env bash

set -ex
set -o pipefail

pushd "$(dirname "$(dirname "$(dirname "$(realpath "${0}")")")")"

find . -wholename "./*.sh" -print0 | \
	xargs --null shellcheck

popd
