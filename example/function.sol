//SPDX-License-Identifier: GLP-3.0
pragma solidity ^0.8.0;

contract Function{
    uint public num = 10;
    //pure 仅读取本地内存的变量，不需要读链上变量
    function returnMany() public pure returns(uint, bool, string memory){
        return (10,true,"zhangsan");
    }
    //view  需要读取链上变量的时候 这里num是链上变量
    function returnMany2() public view returns (uint, bool, string memory){
        string memory text = "lisi";
        return (num, true, text);
    }
    //命名返回值 免return写法
    function returnMany3() public view returns (uint x, bool b, string memory text){
        x = num;
        b = true;
        text = "hello world";
    }
    //用函数返回值赋值
    function returnMany4() public view returns(uint i, bool b, string memory text, uint x,uint y){
        (i,b,text) = returnMany2();
        (x, y) = (10, 20);
    }
    //mapping不能作为函数的入参和出参， 但是array可以
    
}