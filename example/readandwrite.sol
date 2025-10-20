//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <= 0.9.0;

contract simpleContract{
    uint public numa;
    constructor(){
        numa = 100;
    }
    function set(uint _a) public {
        numa = _a;
    }
    function get() public view returns (uint) {
        return numa;
    }
}