//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.0 <= 0.9.0;

contract arrayTest{
    //动态长度数组
    uint[] public arr1;
    //动态长度数组初始化
    uint[] public arr2 = [1,2,3,4,5];
    //固定长度数组
    uint[5] public arr3; //虽未初始化 默认5个0元素

    function GetValu(uint index) public view returns (uint){
        return arr2[index];
    }

    function getArr() public view returns (uint[] memory){
        return arr1;
    }

    //push方法 在元素最后添加元素
    function PushTest(uint value) public {
        arr1.push(value);
    }
    //删除最后一个元素 但是无返回 数组长度减1
    function PopTest() public {
        arr1.pop();
    }
    //指定下标的元素为0， 数组长度不会减1
    function DeleteTest(uint index) public {
        delete arr1[index];
    }
    //真正删除指定元素并且保留原顺序
    function Remove(uint index) public {
        require(index < arr1.length, "out of bound");
        for (uint i = index; i < arr1.length-1; i++){
            arr1[i] = arr1[i+1];
        }
        arr1.pop();
    }
    //真正删除指定元素但不保留原顺序
    function Remove2(uint index) public {
        require(index < arr1.length, "out of bound");
        arr1[index] = arr1[arr1.length-1];
        arr1.pop();
    }


    function GetLength() public view returns (uint){
        return  arr1.length;
    }

}