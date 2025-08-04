//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface iFactorial {
  function fat (uint256 _n) external pure returns (uint256);
}

contract MyContract {
  address addr;

  constructor (address _addr){
    addr = _addr;
  }

  function setAddr(address _addr) public {
    addr = _addr;
  }

  function test(uint256 _value) public view returns (uint256){
    return iFactorial(addr).fat(_value);
  }
}