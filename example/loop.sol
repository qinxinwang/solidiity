//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.0;
contract Loop{
    function test() public pure returns (uint){
        uint a;
        for(uint i = 0; i < 10; i++){
            a += i;
        }
        return a;
    }

    function test2() public  pure returns (uint){
        uint a;
        while(a < 5) {
            a += 1;
        }
        return a;
    }
}