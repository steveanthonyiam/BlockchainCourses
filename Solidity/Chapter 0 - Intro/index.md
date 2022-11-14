# How to build a smartcontract on the Ethereum blockchain


## Intro

This is the scripted version of this youtube video, it could be useful if you just need to retrieve some info without 
rewatching the entire video :

TODO

You are probably wondering how to develop on a blockchain. 
If this is the case, you are at the right place.
I will show you how to code on a blockchain and more precisely on Ethereum.

Hi my name is Steve Anthony, welcome on my new channel Proof of dev. This is my first video of a long serie I hope.

Roll the intro.



## Reminder

So first of all, quick reminder on what is a blockchain.

>A blockchain is a distributed database or ledger that is shared among the nodes of a computer network."
>
> source : https://www.investopedia.com/terms/b/blockchain.asp

You probably already know it if you are here but I think is important to remind it.
Top existing blockchain are bitcoin, ethereum, xrp, cardano, solana.


## Ok now, the big question is how to interact with theses blockchains and what are the keys differences between traditional development and web3 development ?

In traditional software development, you have a database, a backend, and a frontend.
The big difference though is in web3 development is your database and your backend.
Theses two entities are not store on your centralized server anymore, it's now deployed on a decentralized and shared blockchain.
And this is the main difference. 
The equivalent of a database in web3 is the blockchain itselft, it's where you store you data.
The backend could be something like a smartcontract also deployed on the blockchain, it's where you code your decentralized algorithm.
And your frontend will connect with your smartcontract in order to do stuff in the blockchain.

Cool, no ?

## Now, you should probably wondering how to code this smartcontract and how to deploy it on the blockchain ?

### Solidity

Let's dive into that. First thing you need to know is the language used to do that. The answer is Solidity.
Solidity is a language that allow you to code your own contract on the Ethereum blockchain. It evolve and there is 
a lot of versions that come with new improvements.

https://docs.soliditylang.org/en/v0.8.15/

### Remix

Then you will need a development environment. The more easy way to deploy your first contract is by using remix, 
witch is a really cool tool but it's only to discover solidity or make a quick test. 

https://remix.ethereum.org/

### Truffle and Hardhat

When you will be ready to develop for real, you will need to use Truffle or Hardhat. Thoses tools will provide you
a local Ethereum blockchain, and a suit of powerful commands to develop your professional smartcontract in local.

https://trufflesuite.com/

https://hardhat.org/

### Libraries like openzeppelin

Also, to make an efficient code and in order to not reinventing the wheel, you will probably need to use some library like 
openzepplin. 

https://www.openzeppelin.com/

### Testnet

And when your smartcontract will be ready, you will need to publish it on a testnet like Ropsten. It's a live blockchain,
where every one can publish their own contract. It will be a great way to test your development in a production like blockchain.

https://ropsten.etherscan.io/

### Frontend : ethers.js and web3.js

After, you will need to develop your frontend with a javascript framework like react or angular. And to do that
you will need to use library like Ether.js or Web3.js.

https://docs.ethers.io/

https://web3js.readthedocs.io/en/v1.7.4/

### Proxy and contract update

But it's not finish. Because, you will need to find a way to update your smartcontract with new versions. And for that you will a need proxy contract.

### Security audit

But there is more, because if you want to have a secured smart contract, witch is probably the hardest part, you will need
to have some knowledge about hacking and using software like mythril to analyse your code to find vulnerabilities you probably forget when you developed your contract.

https://github.com/ConsenSys/mythril

## Conclusion


If you want to know more about this topic look at my solidity playlist.
The next video is about typing and variables, so check it out if you want to write your first lines of code.

It was Steve Anthony, have a good day and see you next time ;)