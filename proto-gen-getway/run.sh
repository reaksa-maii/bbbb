#!/bin/bash

PROTO_DIR="./proto"

OUT_DIR="./gen"

mkdir -p "$OUT_DIR"

for proto_file in "$PROTO_DIR"/*.proto; do
    protoc -I . --grpc-gateway_out "$PROTO_DIR" \
        --go_out="$OUT_DIR" \
        --go-grpc_out="$OUT_DIR" \
        --go_opt=paths=source_relative \
        --go-grpc_opt=paths=source_relative \
        "$proto_file"
done

echo "Proto files generated in $OUT_DIR"