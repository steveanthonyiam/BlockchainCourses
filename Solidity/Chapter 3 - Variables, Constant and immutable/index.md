# Constant and immutable with solidity

In this video we are going to talk about variables, constant and immutable.

Hi my name is Steve Anthony, welcome on my new channel Proof of dev. 

Roll the intro.

## Variables

https://solidity-by-example.org/variables/

There are 3 types of variables in Solidity

    local
        declared inside a function
        not stored on the blockchain

    state
        declared outside a function
        stored on the blockchain

    global (provides information about the blockchain)


To write or update a state variable you need to send a transaction.

On the other hand, you can read state variables, for free, without any transaction fee.


## Constant or immutable

Let's take a look a the documentation :

> State variables can be declared as constant or immutable. In both cases, the variables cannot be modified after the 
> contract has been constructed. For constant variables, the value has to be fixed at compile-time, while for immutable, 
> it can still be assigned at construction time.
>
> source : https://docs.soliditylang.org/en/v0.6.5/contracts.html#constant-and-immutable-state-variables

So to be clear, you can't change the value of constant.
For immutable, you can do it in the contructor if you want.

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

If you are interested about the cost of an immutable or a constant you should take a look to this article:

https://dev.to/abhikbanerjee99/immutable-not-gone-just-forgotten-111l

It's shown than the constant is cheaper, the immutable is a little bit more expensive but both are way better
than a standard variable.

And he talk about the use case of each one:

>The VRF Coordinator address is the address of the VRF Oracle contract on a specific chain and chances are that it won’t change ever. If so, then it might be just declared constant, right? But what happens when you want to generalize the contract? You could pass in the address via the constructor and have the address be immutable.




## Conclusion


If you want to know more about this topic look at my solidity playlist.

Don't miss anything by subscribing this channel.
Feel free to comment, like, and hit the bell by the way.

Check my socials medias, medium, github, even my vlogs ! 
All that stuff in the description below.

It was Steve Anthony, have a good day and see you next time ;)