//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.0 <= 0.9.0;
 contract Veriables {
    //通过内置的type函数获取变量类型的最大最小值
    uint8 public a = type(uint8).max;
    uint16 public b = type(uint16).max;
    int32 public c = type(int32).min;

    //local变量  存在函数内存中 调用的时候才有
    //state变量 存在链上 调用需要消耗gas
    //global变量  全局变量， 整个以太坊自带的变量

    string public text = "hello world" ; //这个部署在链上就是blockchain变量
    
    function dosomething() public view returns(uint, uint,address) {
        uint number = 10; //这个就是local变量
        uint now = block.timestamp;  //全局变量block
        address addr = msg.sender; //全局变量msg
        return (number, now,  addr);
    }

    //常量 不允许被修改  存储的时候可以减少很多gas消耗
    uint public constant MY_NUM = 10;
   
   //Immutable变量  跟常量一样不可更改，但是允许在构造函数中更改，其他地方则不行
    uint public immutable MY_NUM2 = 100;
    constructor() {
        MY_NUM2 = 1000;
    }
    function getName() public view returns(uint){
        return MY_NUM2;
    }

 }