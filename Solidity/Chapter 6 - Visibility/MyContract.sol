// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

library MyLib {
    function sum(int256 a, int256 b) public pure returns (int256) {
        return a + b;
    }
}

contract MyContract {
    function myFirstFunction() public pure returns (uint256) {
        uint256 number = 100;
        return number;
    }

    function mySecondFunction(uint256 myParams)
        public
        pure
        returns (uint256, uint256)
    {
        uint256 number = 100 + myParams;
        return (number, myParams);
    }

    function callTheLib() public pure returns (int256) {
        return MyLib.sum(100, 20);
    }

    using MyLib for int256;

    function callTheLibTwo(int256 value) public pure returns (int256) {
        return value.sum(100);
    }

    function callTheImport() public view returns (bool) {
        console.log("Log it");
        return true;
    }
}
