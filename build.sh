#!/bin/bash

cd ./grpc-gateway
echo "Starting code generation..."
echo go mod tidy
go mod tidy 
echo "Running code generation script..."
# Run the code generation script
./run.sh
echo "Code generation script completed."
cd ..
cd test-infra
echo "Running test-infra code generation..."
