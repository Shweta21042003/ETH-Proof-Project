// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract My_Token {
    string public name = "SHWETA";
    string public symbol = "SN";
    uint public total = 0;

    mapping(address => uint) public balances;

    function mint(address addr, uint val) public {
        total += val;
        balances[addr] += val;
    }

    function burn(address addr, uint val) public {
        if (balances[addr] >= val) {
            balances[addr] -= val;
            total -= val;
        }
    }
}
