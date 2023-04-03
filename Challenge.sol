//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Challenge {
    function add(uint x,uint y) external pure returns (uint){
        return x+y;
    }

    function sub(uint a,uint b) external pure returns (uint){
        return a-b;
    }

    function mul(uint m,uint n) external pure returns (uint){
        return m*n;
    }
    function div(uint o,uint p) external pure returns (uint){
        return o/p;
    }
}
