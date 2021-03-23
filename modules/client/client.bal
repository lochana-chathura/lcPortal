import ballerina/http;

# Create a cleint instance of mocky
http:Client mockyClient = check new ("https://run.mocky.io/v3");

public function getGETResponse(string relativePath) returns http:Response|error {
    return mockyClient->get(relativePath);
}

public function getPOSTResponse(string relativePath, string payload) returns http:Response|error {
    // string a ="POST:";
    // a = a.concat(payload);
    return mockyClient->post(relativePath, "POST:".concat(payload));
}
