// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract StorageMemoryCalldata {
    struct MyStruct {
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function examples() external {
        myStructs[msg.sender] = MyStruct({foo: 123, text: "bar"});

        MyStruct storage MyStruct = myStructs[msg.sender];
    }
}
