// SPDX-License-Identifier: MIT
contract Map{
    mapping (address => uint) userBalance;
    address[] public users;
    function addUser(address user) public{
        require(userBalance[user] ==0, "user is exist");
        users.push(user);
        userBalance[user] = 100;
    }
}