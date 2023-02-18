#!/usr/bin/env bash

set -e
set -o pipefail

bundle exec jekyll build -d publish
aws --profile personal-terraform s3 sync publish s3://ludwick.us --delete
