//SPDX-License-Identifier: GLP-3.0

pragma solidity ^0.8.0;

contract FunctionModifier {
    address public owner;
    uint public  x = 10;
    bool public lock;

    //构造函数 owner设置为合约所有者
    constructor(){
        owner = msg.sender;
    }
    //修饰器
    modifier OnlyOwner(){
        require(owner == msg.sender, "not owner");
        _;//下划线表示执行其他代码
    }
    modifier validAddress(address _addr){
        require(_addr != address(0), "Not valid addr");
        _; 
    }
    // 修饰符的使用 可以使用多个
    function UpdateOwner(address _addr) public OnlyOwner validAddress(_addr){
        //OnlyOwner 修饰符相当于 在此处执行 require(owner == msg.sender, "not owner");
        //validAddress(_addr) 相当于require(_addr != address(0), "Not valid addr");
        owner = _addr;
    } 
    //防重入 也就是防止一个函数还没执行完马上再调用这个函数
    modifier NoReentrancy(){
        require(!lock, "no reentrancy");
        lock = true;
        _; //相当于执行函数主体
        lock = false;
    }
    function decrement(uint i) public  NoReentrancy{
        x -= i;
       if (i > 1){
            decrement( i - 1);
        }
    }
}