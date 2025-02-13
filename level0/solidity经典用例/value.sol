pragma solidity ^0.8.2;
//值类型

//引用类型

contract Value{
    bool public flag =true;
    address address1 = 0x3409e0738662C3F5d8eC4ff780bea60C945f8FB2;
    address address2 = msg.sender;
    uint256 balance = address2.balance;
    string[4] adaArr = ["This", "is", "an", "array"]; 
   
    function  pay() public{
        address payable recipient = payable(0x1234567890123456789012345678901234567890);
        recipient.transfer(1 ether);
        recipient.call{value: 1 ether}("");  // 使用 call 转移 1 ETH
       
    }
    
    
}