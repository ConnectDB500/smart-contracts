//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Fatorial {
  function fat(uint256 _n) public pure returns (uint256){
    uint256 i = 1;
    uint256 f = 1;
    while(i <= _n){
      f = f * i;
      i++;
    }
    return f;
  }
}