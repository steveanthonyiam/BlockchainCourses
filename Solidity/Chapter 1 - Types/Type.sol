// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
This tutorial is about the different kind of types you have in solidity.
I tried to keep it the more simple and quick to read.

You will find bellow the purpose, the size and some others details about the
types.

Sources : 
- https://www.bitdegree.org/learn/solidity-types
- https://blog.logrocket.com/ultimate-guide-data-types-solidity/
- https://ethereum.stackexchange.com/a/8653
- https://docs.ethers.io/v5/api/utils/strings/#Bytes32String
*/
contract TypesList {
    /**
    Boolean can be true or false but not null

    Size : 1 byte
    */
    bool myBool = true;

    /**
    Integer signed(int256, int8) or unsigned(uint256, uint8) (negative numbers)
    The number represent the maximum size of the data

    Size for int256 and uint256 : 2 **256 bytes
    https://medium.com/coinmonks/eli5-uint256-in-solidity-a16f22942166

    uint = uint256 and int = int256

    Range :
    uint256 : 0         => 2 **256 - 1 
    int256  : -2 **255  => 2 **255 - 1
    */
    uint256 myInteger = 100;

    /**
    Ethereum address (user, contract)
    Size : 20-byte

    Can be payable

    Methods availables : 
    - Balance of one address (here 'this' is the contract address)
    uint myBalance = address(this).balance;

    - Transfert balance to another address (here 0x123)
    address(0x123).transfer(10);

    - Call the method of an other contract : call, delegatecall, staticcall
    bytes memory payload = abi.encodeWithSignature("methodToCall(string)", "myParam");
    address(0x123).call(payload);
    */
    address myAddress = 0xc0ffee254729296a45a3885639AC7E10F9d54979;

    /**
    Fixed size bytes array
    bytes1, bytes2... bytes32
    */
    bytes1 a = 0xb5;
    bytes2 b = 0xb5c2;

    /**
    Dynamically-sized bytes
    */
    bytes c = new bytes(200);

    /**
    Dynamically-sized UTF-8-encoded string

    Min size : 256-bit (32 bytes)
    https://docs.ethers.io/v5/api/utils/strings/#Bytes32String
    */
    string myString = "text";

    /**
    Mapping is like a hash table or dictionary.

    The syntax is (KEY => VALUE)
    Where KEY can be : any type but not contract types, enums, mappings, structs, and any array type
    And VALUE can be : any type, including mapping 

    Data location : storage only

    Max size :
    https://ethereum.stackexchange.com/a/8653
    2^256 * 32 bytes
    */
    mapping(address => uint256) public myMapping;

    /**
    Kind of float or double

    Fixed point numbers are not fully supported by Solidity yet. 
    They can be declared, but cannot be assigned to or from.
    https://docs.soliditylang.org/en/latest/types.html#fixed-point-numbers
    */
    fixed256x18 myFixed;
}
