const grpc = require('@grpc/grpc-js');
const protoLoader = require('@grpc/proto-loader');
const reflection = require('@grpc/reflection');
const path = require('path');

const PROTO_PATH = path.join(__dirname, 'greeter.proto');

const packageDefinition = protoLoader.loadSync(PROTO_PATH, {
  keepCase: true,
  longs: String,
  enums: String,
  defaults: true,
  oneofs: true,
});

const proto = grpc.loadPackageDefinition(packageDefinition);

function sayHello(call, callback) {
  callback(null, { message: `Hello, ${call.request.name}` });
}

async function main() {
  const server = new grpc.Server();

  server.addService(proto.holloworld.Greeter.service, { SayHello: sayHello });

  // Enable reflection
  await reflection.enableReflection(server, {
    'holloworld.Greeter': proto.holloworld.Greeter.service,
  });
  
  server.bindAsync('0.0.0.0:50051', grpc.ServerCredentials.createInsecure(), () => {
    console.log("Server with reflection running on http://0.0.0.0:50051");
    server.start();
  });
}

main();
