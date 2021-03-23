import ballerina/http;
import lcPortal.'client;
import lcPortal.model;

model:Admin adminNotFound = {
    id: "0000000",
    name: "admin_not_found",
    age: "0",
    level: "0"
};

public function getAdmin() returns model:Admin {
    var response = 'client:getGETResponse("/48b43bd1-300f-4acd-8109-4f976fe57e1a");
    if response is http:Response {
        var user = response.getJsonPayload();
        if user is json {
            return checkpanic user.cloneWithType(model:Admin);
        }
    }

    return adminNotFound;
}

public function createAdmin() returns model:Admin {
    var response = 'client:getPOSTResponse("f35a9d36-658f-4552-b05e-57838768e153", "Kamal Fernando");
    if response is http:Response {
        var user = response.getJsonPayload();
        if user is json {
            return checkpanic user.cloneWithType(model:Admin);
        }
    }

    return adminNotFound;
}
