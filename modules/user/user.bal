import ballerina/http;
import lcPortal.'client;
import lcPortal.model;

model:User userNotFound = {
    id: "0000000",
    name: "user_not_found",
    age: "0"
};

public function getUser() returns model:User {
    var response = 'client:getGETResponse("/48b43bd1-300f-4acd-8109-4f976fe57e1a");
    if response is http:Response {
        var user = response.getJsonPayload();
        if user is json {
            return checkpanic user.cloneWithType(model:User);
        }
    }

    return userNotFound;
}

public function createUser() returns model:User {
    var response = 'client:getPOSTResponse("f35a9d36-658f-4552-b05e-57838768e153", "Dileepa Perera");
    if response is http:Response {
        var user = response.getJsonPayload();
        if user is json {
            return checkpanic user.cloneWithType(model:User);
        }
    }

    return userNotFound;
}
