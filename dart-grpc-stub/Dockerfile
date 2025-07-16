# Dockerfile for building
FROM dart:stable AS builder

# Install protobuf compiler and protoc plugin
RUN apt-get update && \
    apt-get install -y protobuf-compiler unzip && \
    dart pub global activate protoc_plugin

ENV PATH="${PATH}:/root/.pub-cache/bin"

WORKDIR /app

COPY pubspec.* ./
RUN dart pub get

COPY . .

# run code generation
# RUN mkdir -p lib/src/generated && \
#     protoc --dart_out=grpc:lib/src/generated -Iprotos protos/v1/*.proto

RUN dart compile exe bin/server.dart -o bin/server

# Stage 2: Minimal runtime image
FROM scratch

COPY --from=builder /runtime/ /
COPY --from=builder /app/bin/server /app/bin/server

EXPOSE 50051

ENTRYPOINT ["/app/bin/server"]
