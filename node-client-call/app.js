const grpc = require('@grpc/grpc-js');

const client = new grpc.Client('localhost:50051', grpc.credentials.createInsecure());

const sayHelloMethod = {
  path: '/holloworld.Greeter/SayHello',
  requestSerialize: (arg) => Buffer.from(JSON.stringify(arg)),
  requestDeserialize: (buffer) => JSON.parse(buffer.toString()),
  responseSerialize: (arg) => Buffer.from(JSON.stringify(arg)),
  responseDeserialize: (buffer) => JSON.parse(buffer.toString()),
};

// ✅ Create Metadata
const metadata = new grpc.Metadata();
metadata.set('authorization', 'Bearer my-secret-token');
metadata.set('custom-header', 'example-value');

// Make the RPC call with metadata
client.makeUnaryRequest(
  sayHelloMethod.path,
  sayHelloMethod.requestSerialize,
  sayHelloMethod.responseDeserialize,
  { name: 'World' },
  metadata,
  (error, response) => {
    if (error) {
      console.error('gRPC Error:', error);
    } else {
      console.log('gRPC Response:', response);
    }
    client.close();
  }
);
