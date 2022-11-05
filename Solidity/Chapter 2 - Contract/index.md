# Contract, functions, library and using for with solidity

This is the scripted version of this youtube video, it could be useful if you just need to retrieve some info without 
rewatching the entire video :

TODO

## Intro

In the last video, we discovered how to types your variables in solidity and now we will see how to create and deploy 
our first smartcontract using remix.

Hi my name is Steve Anthony, welcome on my new channel Proof of dev. 

Roll the intro.

## Remix

Alright, first thing you need to do, is to go on remix.

https://remix.ethereum.org/

Remix is a development environment, where you can code, build, and deploy your app. 

It's mostly used for education purpose or to test quickly a bit of code but it's not the tool you will use
in real life. It work really well and we will use it to code and deploy on a local blockchain.

## The contract

Now, let's explain what is a contract.

A contract is kind of app that could be deploy and access by everyone trought a blockchain.
It look like a main class in other langagues. Basicly, when your contract is deployed it mean
everyone can access your public method and call them.

And a contract is also a way to access and store data on a blockchain. 
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

## Import

If you want to import an other .sol file you can do it like this

```solidity
import "hardhat/console.sol";

function callTheImport() public view returns(bool) {
    console.log("Log it");
    return true;
}
```

## Library

If you want to have a cleaner code you can also create libraries.
It can be usefull if you need to re use as util some code.

```solidity
library MyLib {
    function sum(int a,int b) public pure returns(int) {
        return a + b;
    }
}

contract MyContract {
    function callTheLib() public pure returns(int) {
        return MyLib.sum(100,20);
    }
}
```

## Using for

You can also use the "Using * for *" syntax to add some methods to your type. 
The first param pass to the function will be the object itself.

```solidity
contract MyContract {

    using MyLib for int;

    function callTheLibTwo(int value) public pure returns(int) {
        return value.sum(100);
    }

}
```

## Conclusion


If you want to know more about this topic look at my solidity playlist.

Don't miss anything by subscribing this channel.
Feel free to comment, like, and hit the bell by the way.

Check my socials medias, medium, github, even my vlogs ! 
All that stuff in the description below.

It was Steve Anthony, have a good day and see you next time ;)