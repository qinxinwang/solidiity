//SPDX-Liences-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract EnumTest{
    enum Status{
         Pending,  //0
        Shipped,  //1
        Accepted,  //2
        Rejected,  //3
        Canceled   //4
    }
    Status public myStatus;


    function Get() public view returns (Status){
        return myStatus;
    }
    function set(Status _status) public {
        myStatus = _status;
    }
    function Cancel() public {
        myStatus = Status.Canceled;
    }
    function Reset() public {
        delete myStatus;
    }

}