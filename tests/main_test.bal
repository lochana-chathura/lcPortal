import ballerina/http;
import ballerina/test;
import lcPortal.model;
import lcPortal.user;

model:User userNotFound = {
    id: "0000000",
    name: "user_not_found",
    age: "0"
};

@test:Config {}
function testGetUser() {
    http:Client clientEndpoint = test:mock(http:Client);
    test:prepare(clientEndpoint).when("get").thenReturn(getMockResponse());
    model:User result = user:getUser();
    test:assertEquals(result, userNotFound);
}

function getMockResponse() returns http:Response {
    http:Response mockResponse = new;
    json mockPayload = {
        "id": "w234567",
        "name": "Rahal Fernando",
        "age": "23"
    };
    mockResponse.setPayload(mockPayload);
    return mockResponse;
}
