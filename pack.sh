#!/usr/bin/env bash
set -e

cmake \
    -DUKV_BUILD_ENGINE_UMEM=1 \
    -DUKV_BUILD_ENGINE_ROCKSDB=1 \
    -DUKV_BUILD_ENGINE_LEVELDB=1 \
    -DUKV_BUILD_BUNDLES=1 \
    -DUKV_BUILD_TESTS=0 \
    -DUKV_BUILD_BENCHMARKS=0 \
    . && make -j16
mkdir -p go-ukv/lib/
cp build/lib/lib*_bundle.a go-ukv/lib/
