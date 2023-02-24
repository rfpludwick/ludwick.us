#!/usr/bin/env bash

set -ex
set -o pipefail

pushd "$(dirname "$(dirname "$(dirname "$(realpath "${0}")")")")"

yamllint .

popd
