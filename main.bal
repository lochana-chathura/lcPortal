import lcPortal.user;
import ballerina/io;
import lcPortal.admin;
import lcPortal.model;

public function main() {
    model:User user1 = user:getUser();
    io:println(user1);
    model:User user2 = user:createUser();
    io:println(user2);
    model:Admin admin1 = admin:getAdmin();
    io:println(admin1);
    model:Admin admin2 = admin:createAdmin();
    io:println(admin2);
}
