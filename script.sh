#!/bin/bash

PROTO_DIR="./proto"

OUT_DIR="./generated"

# Create output directory if it doesn't exist
mkdir -p "$OUT_DIR"

# Generate code from all .proto files in the PROTO_DIR
for proto_file in "$PROTO_DIR"/*.proto; do
    echo "Generating code for $proto_file..."
    protoc --proto_path="$PROTO_DIR" --go_out="$OUT_DIR" --go-grpc_out="$OUT_DIR" "$proto_file"
done

echo "Code generation completed."