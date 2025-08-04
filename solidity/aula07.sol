//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./aula07/SimpleAritmetics.sol";
import "./Mathlib.sol";

contract MyContract {
  SimpleAritmetics sa;

  constructor(){
    sa = new SimpleAritmetics();
  }

  function testContract(int256 v1, int256 v2) public view returns (int256){
    int256 valueC = sa.addInteger(v1, v2);
    return valueC;
  }

  function testLibrary(int256 v1, int256 v2) public pure returns (int256){
    int256 valueL = Mathlib.mulInteger(v1, v2);
    return valueL;
  }
}