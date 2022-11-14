// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract MemoryStorageAndCalldata {
    struct Data {
        uint256 value;
    }

    Data public myData;

    // it wont work
    function addDataWithMemory(uint256 _value) public {
        Data memory notAPointerToMyData = myData;
        notAPointerToMyData.value = _value;
    }

    // it work
    function addDataWithStorage(uint256 _value) public {
        Data storage pointerToMyData = myData;
        pointerToMyData.value = _value;
    }

    Data[] public myDataArray;

    function addDataArrayWithMemory(uint256 _value) public {
        Data memory myLocalDataArray = Data(_value);
        myDataArray.push(myLocalDataArray);
    }

    function getDataWithStorage(uint256 _index) public view returns (uint256) {
        Data storage pointerToMyDataArray = myDataArray[_index];
        return pointerToMyDataArray.value;
    }
}
