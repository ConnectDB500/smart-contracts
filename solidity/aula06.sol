//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StorageV3 {
  enum Status {
    Zero,
    Aproved,
    Reproved,
    Undefined
  }

  struct Person {
    string name;
    uint256 age;
    bool brazilian;
    Status gradeStatus;
  }

  Person public person;

  constructor(){
    person.name = "Hacker";
    person.age = 25;
    person.brazilian = true;
    person.gradeStatus = Status.Undefined;
  }

  function setName(string memory _name) public {
    person.name = _name;
  }

  function setAge(uint256 _age) public {
    person.age = _age;
  }

  function setBrazilian(bool _br) public {
    person.brazilian = _br;
  }

  function updateGradeStatus(uint256 _value) public {
    if (_value <= 10 && _value >= 0){
      if(_value >= 7){
        person.gradeStatus = Status.Aproved;
      } else {
        if(_value == 0){
          person.gradeStatus = Status.Zero;
        }else{
          person.gradeStatus = Status.Reproved;
        }
      }
    }else{
      person.gradeStatus = Status.Undefined;
    }
  }
}