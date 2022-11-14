## Intro

In the last video, we discovered the types you can use in solidity.
You are now ready and probably eager to create your first contract.
In this video I will show you how to define a function and how to call it when the contract is deployed.
I will also talk you about the different kind of visibility you could use.

Hi my name is Steve Anthony, welcome on my new channel Proof of dev. 

Roll the intro.




##  Visibility

Functions and state variables have to declare whether they are accessible by other contracts.

Functions can be declared as

    public - any contract and account can call
    private - only inside the contract that defines the function
    internal- only inside contract that inherits an internal function
    external - only other contracts and accounts can call

State variables can be declared as public, private, or internal but not external.