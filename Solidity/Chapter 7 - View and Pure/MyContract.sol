// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;


contract MyContract {

    bool myBoolean = false;

    function testPure() public pure returns(bool){
        bool localBool = true;
        return localBool;
    }

    function testView() public view returns(bool){
        return myBoolean;
    } 
}

