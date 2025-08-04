//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract PersonDataStorage {
  string public name;
  uint private age;
  bool internal brazilian;

  constructor(){
    name = "Jeremias";
    age = 10;
    brazilian = true;
  }

  function setName( string memory _name ) public {
    name = _name;
  }

  function setAge(uint _age) public {
    age = _age;
  }

  function getAge() public view returns(uint) {
    return age;
  }

  function setNationality(bool _braz) public {
    brazilian = _braz;
  }

  function getNationalityBr() public view returns(bool){
    return brazilian;
  }

  function addValue(uint _value1, uint _value2) internal pure returns(uint){
    return _value1 + _value2;
  }

  function incrementAge() external {
    age = addValue(age, 1);
  }
}
