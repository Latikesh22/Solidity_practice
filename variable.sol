// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract variable{
    int Number;
    uint number1;
    bool isNumber;
    string Quote;

    function set(int _Number) public {
        Number = _Number;
    }

    function get() public view returns(int){
        return Number;
    }

    function set1(uint _number1) public {
        number1 = _number1;
    }

    
    function get1() public view returns(uint){
        return number1;
    }

    function set2(bool _isNumber) public {
        isNumber = _isNumber;
    }

    
    function get2() public view returns(bool){
        return isNumber;
    }

    function set3(string memory _Quote) public {
        Quote = _Quote;
    }

    
    function get3() public view returns(string memory){
        return Quote;
    }
}
