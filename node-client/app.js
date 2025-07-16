const grpc = require('@grpc/grpc-js');

// Define service and method manually
const client = new grpc.Client('localhost:50051', grpc.credentials.createInsecure());