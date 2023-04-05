// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    string tokenName = "GlobalOffensive";
    string tokenAbbrv = "GO";
    uint public totalSupply = 0;
    address minter;

    mapping(address => uint) public balances;
    mapping(address => bool) public isUser;

    constructor() {
        minter = msg.sender;
    }

    function mint(address _address,uint _value) public {
            require(msg.sender == minter);
            totalSupply += _value;
            balances[_address] += _value;
        }

    function transfer(address _address,address _reciptent,uint _value) public {
        require(minter == _address);
        require(isUser[_reciptent] == true);
        balances[_address] -= _value;
        balances[_reciptent] += _value;
    }

    function burn(address _address,uint _value) public {
        if (balances[_address] >= _value){
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
}
