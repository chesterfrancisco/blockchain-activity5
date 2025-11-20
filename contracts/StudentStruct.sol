// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

contract StudentStruct {
    struct Student {
        string name;
        uint age;
        bool enrolled;
    }

    Student[] public students;

    function addStudent(string memory _name, uint _age, bool _enrolled) public {
        students.push(Student(_name, _age, _enrolled));
    }

    function getStudent(uint index) public view returns (string memory, uint, bool)
    {
        Student memory s = students[index];
        return (s.name, s.age, s.enrolled);
    }

    function getTotalStudents() public view returns (uint) {
        return students.length;
    }

}
