//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.0 <=0.9.0;

contract ifElse{
    function foo(uint x) public pure returns (uint){
        if (x < 10 ){
            return 10;
        } else if(x < 20){
            return  20;
        } else {
            return 30;
        }
    }

    function boo(uint x) public pure returns (uint){
        return x > 10 ? 1 : 2;
    }
}
