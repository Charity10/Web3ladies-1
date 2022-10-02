// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract studentDatabase {

    struct student {
        string Name;
        string gender;
        uint256 age;
    }

    mapping(uint256 => student) students;

    function addStudent(uint256 Id, string memory Name, string memory gender, uint256 age ) public {
        students[Id] = student ({
            Name: Name,
            gender: gender,
            age: age

        });
        
    }

    function getStudent(uint256 Id) public view returns ( student memory) {
          return students[Id];
    }
}