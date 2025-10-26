//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Struct{
    
    struct student{
        string name;
        uint score;
    }
    student[] public stus;
// 将结构体添加到数组中的三种方法
    function set1(string calldata  _name, uint _score) public{
        stus.push(student(_name, _score)); 
    }
    function set2(string calldata _name, uint _score) public {
        stus.push(student({name: _name, score: _score}));
    }
    function set3(string calldata _name, uint _score) public {
       student memory tmp;
       tmp.name = _name;
       tmp.score = _score;
       stus.push(tmp);
    }
    function get(uint _index) public view returns (student memory){
        require(_index < stus.length, "out of index");
        return stus[_index];
    }
    function UpdateScore(uint _index, uint _score) public{
        require(_index < stus.length, "out of index");
        stus[_index].score = _score;
    }
}