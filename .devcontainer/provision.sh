#!/usr/bin/env bash

set -exo pipefail

gem install bundler
bundler install
npm install

# Local provisioner?
if [ -x .devcontainer/provision-local.sh ]; then
	.devcontainer/provision-local.sh
fi
