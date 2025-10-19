//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <= 0.9.0;

contract DataType {
    bool public isTrue;

    uint8 public number = 255;  //最大值是2的8次方-1=255
    uint16 public number1 = 2**16-1; //最大值是2的16次方-1=65535
    uint public number2 = 2**256-1; //uint就是uint256 最大值2的256次方-1

    int8 public number3 = -128; //最小值是-2的7次方=-128,最大值是2的7次方-1  -128---127

    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    bytes1 public a ; //bytes1 就是uint8 不过是16进制
    bytes1 public b = 0x7b;

}