// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;
contract Array{
    //声明一个动态大小的无符号整数数组
    uint256[] public array;
    //声明一个固定大小10的无符号256位整数数组
    uint256[10] public array2;

    // 定义一个视图函数，用于获取动态数组 arr 中指定索引位置的元素
    function getItem(uint256 i) public view returns(uint256){
        return array[i];
    }
    //获取动态数组的长度
    function getLength() public view returns(uint256){
        return array.length;
    }
    //创建内存数组随函数执行结束销毁
    function createArr() public{
        uint256[] memory arr = new uint256[](6);
    }

}