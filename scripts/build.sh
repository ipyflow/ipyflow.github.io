#!/usr/bin/env bash

set -euxo pipefail

pushd ..
jb build ipyflow.github.io
popd
