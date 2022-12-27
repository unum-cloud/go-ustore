#!/usr/bin/env bash
set -e

cmake -DUKV_BUILD_ENGINE_UMEM=1 -DUKV_BUILD_ENGINE_ROCKSDB=1 -DUKV_BUILD_ENGINE_LEVELDB=1 . 
make -j16
mkdir -p go-ukv/lib/
cp build/lib/libukv_embedded_* build/lib/librocksdb.a build/lib/libleveldb.a go-ukv/lib/
