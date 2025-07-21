const path = require('path');
const grpc = require('@grpc/grpc-js');
const protoLoader = require('@grpc/proto-loader');
const { ReflectionService } = require('@grpc/reflection'); // Correct import

const PROTO_PATH = path.join(__dirname, 'greeter.proto');

const packageDefinition = protoLoader.loadSync(PROTO_PATH, {
  keepCase: true,
  longs: String,
  enums: String,
  defaults: true,
  oneofs: true,
});
const proto = grpc.loadPackageDefinition(packageDefinition);

const greeterService = proto.holloworld?.Greeter?.service;

if (!greeterService) {
  console.error("Greeter service not found. Check your proto package name and structure.");
  process.exit(1);
}

const server = new grpc.Server();

server.addService(greeterService, {
  SayHello: (call, callback) => {
    callback(null, { message: `Hello ${call.request.name}` });
  },
});
const reflec = new ReflectionService(proto)
reflec.addToServer(server);

server.bindAsync('0.0.0.0:5000', grpc.ServerCredentials.createInsecure(), () => {
  console.log("Server running with reflection at 0.0.0.0:5000");
  server.start();
});
