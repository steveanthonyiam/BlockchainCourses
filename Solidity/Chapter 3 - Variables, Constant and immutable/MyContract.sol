// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract ConstantAndImmutable {
    uint256 public constant c1 = 7894578;
    uint256 public immutable i1;

    constructor(uint256 _i1) {
        i1 = _i1;
    }
}
