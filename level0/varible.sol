pragma solidity ^0.8.22;
contract Varible {
    constructor() {
        
    }

uint storedData; // 状态变量 

address address1 = block.coinbase; //当前区块矿工的地址
uint gaslimit = block.gaslimit;// 当前区块的 gaslimit

uint number = block.number; // 当前区块的 number

uint timestamp = block.timestamp; //当前区块的时间戳，为 unix 纪元以来的秒

uint256 gasleft = gasleft; // 剩余 gas

address sender = msg.sender;// 消息发送者 (当前 caller)

bytes4 sig = msg.sig; //的前四个字节 (function identifier)

uint weiV = msg.value; //当前消息的 wei 值


uint gasprice = tx.gasprice;// 交易的 gas 价格

}