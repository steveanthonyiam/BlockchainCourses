# Constant and immutable with solidity

This is the scripted version of this youtube video, it could be useful if you just need to retrieve some info without 
rewatching the entire video :

TODO

## Intro

What are the differences between view and pure and how to use them ?

Hi my name is Steve Anthony, welcome on my new channel Proof of dev. 

Roll the intro.

## Constant or immutable

Let's take a look a the documentation :

> View function can be declared view in which case they promise not to modify the state. they can view the state variable but can't modify it
> Pure function declares that no state variable will be changed or read.
> 
> source : https://hashnode.com/post/pure-vs-view-in-solidity-cl04tbzlh07kaudnv1ial1gio

So if it's not christall clear : 
If your function is a View: you can read the variables stored in your contract. It's impossible to write.
If it's Pure: you can't read any variables of the contract, everything you can use will be embeded in your function.

Alright, let's see on remix.

https://remix.ethereum.org/

```solidity
contract ConstantAndImmutable {
    uint256 public constant c1 = 7894578;
    uint256 public immutable i1;

    constructor(uint256 _i1) {
        i1 = _i1;
    }
}
```

About the cost of pure and view, I found an interesting thread here : 

> Pure and View functions don't cost any gas to call if they're called externally from outside the contract. But they do cost gas if called internally by another function.
> 
> source: https://ethereum.stackexchange.com/questions/52885/view-pure-gas-usage-cost-gas-if-called-internally-by-another-function/52887#52887

```solidity
pragma solidity ^0.4.24;


contract PureFunctionTest {

   uint state;

    // free
    function addNumbers(uint a, uint b) public pure returns (uint) {
       return a +b ;
   }

    // not free
   function updateState(uint a, uint b) public {
       
     uint c = addNumbers(a,b); // this will cost you
     state = c;
   }

    // free
   function addThreeNumbers(uint a, uint b, uint c) public pure returns (uint) {
       
       uint temp = addNumbers(a,b);
       uint num  = addNumbers(temp,c);
       return num;
   }
}
```

As you can see, it cost nothing to call a pure or view function outside the contract. 

But if you call the function in a non pure or view function, the call of this pure or view function will cost you.

## Conclusion


If you want to know more about this topic look at my solidity playlist.

Don't miss anything by subscribing this channel.
Feel free to comment, like, and hit the bell by the way.

Check my socials medias, medium, github, even my vlogs ! 
All that stuff in the description below.

It was Steve Anthony, have a good day and see you next time ;)