//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Factorial {
  uint256 i;
  uint256 f = 1;

  for (i = 1; i <= _n; i++){
    f = f * i;
  }
  return f;
}