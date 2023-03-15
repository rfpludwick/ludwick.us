#!/usr/bin/env bash

set -exo pipefail

bundle exec jekyll build --destination publish
aws --profile personal-terraform s3 sync publish s3://ludwick.us --delete
