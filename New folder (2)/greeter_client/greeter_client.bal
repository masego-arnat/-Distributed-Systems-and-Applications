import ballerina/io;

GreeterClient ep = check new ("http://localhost:9090");

public function main() returns error? {
    HelloRequest sayHelloRequest = {name: "ballerina"};
    HelloReply sayHelloResponse = check ep->sayHello(sayHelloRequest);
    io:println(sayHelloResponse);
}

