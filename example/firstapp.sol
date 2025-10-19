//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <= 0.9.0;

contract Counter{
    uint public count = 10;
    function get() public view returns(uint){
        return count;
    }
    function inc(uint data) public  {
        count += data;
    }
    function dec() public {
        count -= 1;
    }
}