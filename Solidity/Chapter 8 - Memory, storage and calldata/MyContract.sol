// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;


contract MyContract {

    struct MyStruct {
        int value;
    }

    bool myBoolean = false;

    MyStruct public stateStruct;

    constructor(){
        stateStruct = MyStruct(1);
    }


    function test() public{
        MyStruct memory localStruct = stateStruct;
        localStruct.value = 2;
        stateStruct = localStruct;
    }



    function testCalldata(int[] memory numbers) public pure returns (int[] memory){
        numbers[0] = 22;

        return numbers;
    }

    // impossible
    function testCalldata(int memory number) public pure returns (int memory){
        number = 1;

        return number;
    }
 
}

