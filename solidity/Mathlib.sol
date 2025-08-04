//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

library Mathlib {
  function mulInteger(int256 _value1, int256 _value2) public pure returns(int256){
    return _value1 * _value2;
  }

  function divInteger(int256 _value1, int256 _value2) public pure returns(int256){
    return _value1 / _value2;
  }
}