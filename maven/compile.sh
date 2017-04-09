#!/bin/bash
set -e
# Set directory to where we expect code to be
cd /src/${SOURCE_PATH}
echo "Building"
govendor sync
echo "Fix formatting"
go fmt ./...
echo "Running Tests"
go test ./...
echo "Building source"
go build
echo "Build Successful"