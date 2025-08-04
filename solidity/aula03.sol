//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Fatorial {
  function fat(uint256 _n) public pure returns (uint256) {
    uint256 i;
    uint256 f = i;
    for(i = 1; i <= _n; i++){
      f = f * i;
    }
    return f;
  }
}
