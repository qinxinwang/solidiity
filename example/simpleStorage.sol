//SPDX-License-Identifier: GLP-3.0

pragma solidity ^0.8.0;

contract SimpleStorage{
    uint num;
    struct People{
        uint age;
        string name;
    }

    People[] public pesons;
    mapping (string => uint) public nameToAge;

    function store(uint _num) public {
        num = _num;
    }

    function get() public view returns (uint){
        return num;
    }
    /*
    calldata跟memory的区别 calldata是只读的，不能修改
    function AddPeson(uint _age, string calldata  _name) public {
       // _name = "dog"; 也就是这里是不可以修改的
        pesons.push(People(_age, _name));
    }
    */
    //memory 修饰  mapping struct array  string本质是array
    function AddPeson(uint _age, string memory _name) public {
        //pesons.push(People(_age, _name));
        pesons.push(People({name: _name,age:_age}));
        nameToAge[_name] = _age;
    }

    function GetPeson() public view returns (People[] memory){
        return  pesons;
    }
    function GetAgeByName(string memory _name) public view returns (uint){
        return nameToAge[_name];
    }
}