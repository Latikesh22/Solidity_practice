//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract FunctionsTutorial {
    function add(uint x,uint y) external pure returns (uint){
        return x+y;
    }

    function sub(uint a,uint b) external pure returns (uint){
        return a-b;
    }
}
