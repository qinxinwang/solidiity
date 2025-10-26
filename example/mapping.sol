//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.0 ;
contract Mapping {
    //mapping语法是 mapping(key => value)
    //key可以是string bool int address bytes 或者是已经部署的合约
    //value可以是多种类型 甚至是另一个mapping或者array

    mapping(address => uint) public balances; //定义一个mapping 记录用户的余额)
    mapping (address => mapping (uint => bool)) public nested; // nestmapping

    function GetAddr(address addr) public view returns (uint){
        return balances[addr];
    }

    function SetMap(address addr, uint mount) public {
        balances[addr] = mount;
    }

    function Clean(address addr) public {
        delete balances[addr];
    }

    function getnestmap(address addr,uint num) public view returns (bool) {
        return nested[addr][num];
    }
    function setnest(address addr,uint num,bool flag) public {
        nested[addr][num] = flag;
    }
    function deleteNest(address addr,uint num) public {
        delete nested[addr][num];
    }
}