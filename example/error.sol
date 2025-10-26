//SPDX-License-Identifier: GLP-3.0
pragma solidity ^0.8.0;

contract ErrorStudy {
    uint[5] public arr = [1,2,3,4,5];
    //require revert用于执行前验证条件
    //assert 用于检查代码中是否存在错误。断言失败可能意味着存在 bug。仅能用于内部测试错误
    function TestRequire(uint _i) public view returns(uint){
        require(_i < 5, "out of index");//后面是报错原因
        return arr[_i];
    }
    function TestRevert(uint _i) public view returns(uint){
        if (_i > 4){
            revert("out of index");
        }
        return arr[_i];
        
    }
    function TestAssert(uint _i) public view returns(uint){
        assert(_i < 5);
        return arr[_i];
    }
}