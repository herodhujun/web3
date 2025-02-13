// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;
//import "@openzeppelin/contracts/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
contract MyToken is ERC20{
    constructor(string memory name, string memory symbol) ERC20(name, symbol){
        _mint(msg.sender, 1000 * 10 ** 18);  // 给合约部署者 1000 代币
    }
    // 授权第三方可以使用代币
    function approveTokens(address add, uint256 amount) public returns (bool) {
        return approve(add, amount);  // 授权 spender 可以使用 amount 个代币
    }

    // 查询剩余的授权额度
    function checkAllowance(address owner, address add) public view returns (uint256) {
        return allowance(owner, add);  // 查询 owner 授权给 spender 的额度
    }

    // 第三方（被授权者）代替 owner 使用代币
    function transferFromOwner(address owner, address recipient, uint256 amount) public returns (bool) {
        return transferFrom(owner, recipient, amount);  // 代表 owner 将代币转移给 recipient
    }
    
}