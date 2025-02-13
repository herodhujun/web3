pragma solidity ^0.5.0; 
import "@openzeppelin/contracts/contracts/math/SafeMath.sol"; 
contract SafeMathDemo { 
using SafeMath for uint256; 
uint counter; 
function add(uint i) public { 
// 使用 SafeMath 的 add 方法 
counter = counter.add(i); 
} 
}