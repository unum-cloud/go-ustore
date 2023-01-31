#!/usr/bin/env bash
set -e

cmake -DUKV_BUILD_ENGINE_UMEM=1 -DUKV_BUILD_ENGINE_ROCKSDB=1 -DUKV_BUILD_ENGINE_LEVELDB=1 -DUKV_BUILD_BUNDLES=ON . 
make -j16
mkdir -p go-ukv/lib/
cp build/lib/lib*_bundle.a go-ukv/lib/
