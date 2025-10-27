//SPDX-License-Identifier: GLP-3.0
pragma solidity ^0.8.0;

contract Event {
    string public num = "zhangsan";
    event Log(address indexed sender, string message); // Event with indexed parameter)
    event AnothreLog();
    function  test() public {
        emit Log(msg.sender, "hello world");
        emit Log(msg.sender, num);
        emit AnothreLog();
    }
}