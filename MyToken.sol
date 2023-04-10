// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    string public tokenName = "GlobalOffensive";
    string public tokenAbbrv = "GO";
    uint public totalSupply = 100;
    address payable public minter;

    mapping(address => uint) public balances;
    mapping(address => bool) public isUser;

    constructor() {
        minter = payable(msg.sender);
    }

    function addUser(address _address) public {
        isUser[_address] = true;
    }

    function mint(address _address, uint _value) public {
        require(isUser[_address], "User does not exist");
        totalSupply += _value;
        balances[_address] += _value;
    }

    function transfer(address _recipient, uint _value) public payable {
        require(isUser[_recipient], "Recipient does not exist");
        balances[msg.sender] -= _value;
        balances[_recipient] += _value;
    }

    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
