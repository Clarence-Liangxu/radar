#!/usr/bin/env bash

set -euo pipefail

PROJ_ROOT=$(cd "$(dirname "$0")" && pwd)
echo "Project root: ${PROJ_ROOT}"

function compile_project() {
    local project_dir=${PROJ_ROOT}
    local build_dir="${PROJ_ROOT}/build"
    pushd "${project_dir}" > /dev/null
    if [ ! -d "${build_dir}" ]; then
	mkdir -p "${build_dir}"
    fi
    pushd "${build_dir}" > /dev/null

    rm -rf ./*
    cmake -DLLVM_DIR=/Users/clarence/Workspace/app/clang+llvm-17.0.6-arm64-apple-darwin22.0 ..
#    cmake -DLLVM_DIR=/usr ..
    make -j
    popd > /dev/null
    popd > /dev/null
    

}

function main() {
    compile_project
}

main "$@"
