// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;


contract MyContract {


    function publicFunction() public pure returns(bool){
        return privateFunction();
    }

    function privateFunction() private pure returns(bool){
        return internalFunction();
    }

    function internalFunction() internal pure returns(bool){
        return true;
    }

    function externalFunction() external pure returns(bool){
        return true;
    }
}

contract MyContractChild is MyContract {

    function testInternalFunction() public pure returns(bool){
        return internalFunction();
    }

}