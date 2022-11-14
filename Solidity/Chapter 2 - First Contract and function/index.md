## Intro

In the last video, we discovered the types you can use in solidity.
You are now ready to create your first contract.
In this video I will show you how to define a function and how to call it when the contract is deployed.

Hi my name is Steve Anthony, welcome on my new channel Proof of dev. 

Roll the intro.


## The contract

A contract is kind of app that could be deploy and access by everyone trought the blockchain.
It look like a main class in other langagues. 
Basicly, when your contract is deployed it mean everyone can access your methods and call them.

And a contract is also a way to access and store data. 
Finally it have balance, witch mean you can send and receive ether from and to the address of the contract.

```solidity
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
}
```
As you can see a contract really look like a class. Also, you will need to define the version of solidity with a pragma.

## Functions

Now, we can add our first function.

```solidity
function myFirstFunction() public pure returns(uint256) {
    uint256 number = 100;
    return number;
}
```

In this one we just are going to return 100. When we write our function we need to indicate the name, the visibility (public) and what we returns witch is a uint256 here.

The keyword pure will be explain in a other video but it's needed in this case.

Obviously you can add one or more parameters and if you want, you can returns multiples values.

```solidity
function mySecondFunction(uint256 myParams) public pure returns(uint256,uint256) {
    uint256 number = 100 + myParams;
    return (number,myParams);
}
```


   // Return values can be named.
    function named()
        public
        pure
        returns (
            uint x,
            bool b,
            uint y
        )
    {
        return (1, true, 2);
    }


// Call function with key-value inputs
contract XYZ {
    function someFuncWithManyInputs(
        uint x,
        uint y,
        uint z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint) {}

    function callFunc() external pure returns (uint) {
        return someFuncWithManyInputs(1, 2, 3, address(0), true, "c");
    }

    function callFuncWithKeyValue() external pure returns (uint) {
        return
            someFuncWithManyInputs({a: address(0), b: true, c: "c", x: 1, y: 2, z: 3});
    }
}




