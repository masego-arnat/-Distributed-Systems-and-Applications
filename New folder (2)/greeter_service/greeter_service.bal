import ballerina/grpc;

listener grpc:Listener ep = new (9090);

@grpc:Descriptor {value: HELLOWORLD_DESC}
service "Greeter" on ep {

    remote function sayHello(HelloRequest value) returns HelloReply|error {
    }
}

