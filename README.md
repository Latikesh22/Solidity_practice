# MyToken.sol
This is a simple implementation of a Solidity smart contract that represents a basic token called "GlobalOffensive" with the token abbreviation "GO". This token is built on the Ethereum blockchain platform and follows the MIT license.

## Description
This code is a smart contract written in the Solidity programming language for a token named "GlobalOffensive" with the abbreviation "GO". The token contract has a total supply of 100, and its minter is defined as an Ethereum address, which is the account that originally deploys the contract.

The contract has three functions, "addUser", "mint" and "burn". The "addUser" function adds a user to a mapping that stores whether a particular address is a valid user of the token. The "mint" function increases the token supply by a specified amount, and assigns the minted tokens to a user's balance. The "burn" function decreases the token supply by a specified amount and removes the tokens from a user's balance.

The contract also has two mappings that store user balances and whether an address is a valid user of the token. Finally, there is a "transfer" function that allows users to transfer tokens from their balance to another user's balance, provided that the recipient is a valid user and that the sender has sufficient balance.

The code begins with a comment specifying the license under which the code is released, which in this case is the MIT license. The "pragma" statement specifies the version of Solidity used to compile the contract.


### Executing program
```
// SPDX-License-Identifier: MIT
```
This is a comment line that specifies the license type under which the code is released.

```
pragma solidity ^0.8.0;
```
This line specifies the version of the Solidity compiler that should be used to compile the code. In this case, the version is Solidity 0.8.0 or higher.

```
contract MyToken {
```
This is the declaration of a new Solidity contract named MyToken.

```
string public tokenName = "GlobalOffensive";
string public tokenAbbrv = "GO";
uint public totalSupply = 100;
address payable public minter;
```
These lines declare several public state variables that represent the token name, token abbreviation, total supply, and the address of the minter. Public state variables can be accessed and read by anyone on the blockchain.

```
mapping(address => uint) public balances;
mapping(address => bool) public isUser;
```
These two lines declare two public mappings. The first mapping, balances, maps addresses to their respective token balances. The second mapping, isUser, maps addresses to a boolean value indicating whether or not the address is a user of the token.

```
constructor() {
    minter = payable(msg.sender);
}
```
It sets the minter variable to the address of the contract creator. The payable keyword indicates that the address is capable of receiving payments.

```
function addUser(address _address) public {
    isUser[_address] = true;
}
```
This function allows the contract owner to add new users to the token by setting their isUser status to true.

```
function mint(address _address, uint _value) public {
    require(isUser[_address], "User does not exist");
    totalSupply += _value;
    balances[_address] += _value;
}
```
This function allows the minter to mint new tokens and send them to a specific address. The require statement ensures that the address is a valid user of the token. The function increases the totalSupply by _value and adds the same amount to the balance of the _address.

```
function transfer(address _recipient, uint _value) public payable {
    require(isUser[_recipient], "Recipient does not exist");
    balances[msg.sender] -= _value;
    balances[_recipient] += _value;
}
```
This function allows a user to transfer tokens to another address. The require statement ensures that the recipient is a valid user of the token. The function transfers _value tokens from the sender to the recipient.

```
function burn(address _address, uint _value) public {
    require(balances[_address] >= _value, "Insufficient balance");
    totalSupply -= _value;
    balances[_address] -= _value;
}
```
This function allows the minter to burn tokens by subtracting _value tokens from the balance of _address and reducing the totalSupply. The require statement ensures that the _address has sufficient balance to burn the specified amount of tokens.


# Challenge.sol
This is a Solidity smart contract called "Challenge" that contains four functions: "add", "sub", "mul", and "div". These functions take in two uint parameters and perform arithmetic operations on them. Each function returns the result of the operation performed. The contract is licensed under the MIT license and uses Solidity version 0.8.0.

# variable.sol
The contract is named "variable" and has four variables defined within it: an integer named Number, an unsigned integer named "number1", a boolean named "isNumber", and a string named Quote.The contract has four functions defined within it, each of which corresponds to one of the four variables. The "set" functions are used to set the values of the variables, while the "get" functions are used to retrieve the values of the variables.
The functions are defined as public, which means that anyone can access them. The "memory" keyword is used for the string variable to indicate that it is a temporary variable that is stored only in memory.

## Author

Latikesh Pachpute - @[Latikesh22](https://github.com/Latikesh22)
