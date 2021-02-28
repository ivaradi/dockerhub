#!/bin/bash


pushd "${DRONE_WORKSPACE}"

dir="${1}"
shift

script="${1}"
shift

cp -a "${dir}" /build/source

popd

exec "/build/source/${script}" "$@"
