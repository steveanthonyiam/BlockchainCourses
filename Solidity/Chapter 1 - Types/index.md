# What are solidity types

This is the scripted version of this youtube video, it could be useful if you just need to retrieve some info without 
rewatching the entire video :

TODO

## Intro

You ready to code your first smartcontract ? Fantasic ! 
Let's dive in the first thing you need to know about this langague, the differents kind of type. 

Hi my name is Steve Anthony, welcome on my new channel Proof of dev. 

Roll the intro.

## Preface

In this video I'm going to sum up what each type is useful for in Solidity and quickly talk about the amount of memory used by each of them.

The reason for that, is because you need to optimise your code. If you don't, you will have some heavy gaz fee. And this is really important to have this in mind when you choose your type. 

I will talk about this subject in a future video because there is a lot to say. 


# Remix

Remix is the tool you need to use if you want to learn Solidity. 

## Boolean

Let's begin with Boolean.

Pretty simple, a boolean can be true or false but not null. 
And it use 1 byte.

```solidity
    bool myBool = true;
```

## Integer

If you need a number, you will need to use an integer. 
If this number is only positive, you will use a unsigned one and if it can be both, you will use a signed one.

Depending of your needs, you will fix the size of the int. It start from int8 to int256. You can move the number by step of 8. It work for unsigned too.

The keyword int is equivalant to int256. And it use 2 **256 bytes.
The range for this an int is a number incule between -2 **255 to 2 **255 - 1  
And for the uint is a number incule between 0 and 2 **256 - 1

```solidity
    uint256 myInteger = 100;
    int256 myIntegerNegative = -100;
```

## Address

The address type is used to store ethereum address like wallet or contract adress.
The size used is 20 bytes.

```solidity
 address myAddress = 0xc0ffee254729296a45a3885639AC7E10F9d54979;
 ```

And if it's payable, witch is a topic I will present you in a other video. It can have some methods attached.

You can have the balance of one address (here 'this' is the contract address)

```solidity
uint myBalance = address(this).balance;
```

You can transfert balance to another address (here 0x123)

```solidity
address(0x123).transfer(10);
```

Or you can call the method of an other contract : call, delegatecall, staticcall

```solidity
bytes memory payload = abi.encodeWithSignature("methodToCall(string)", "myParam");
address(0x123).call(payload);
```

## Bytes

You have too way to store an array of bytes.

By using a fixed size array :

```solidity
/**
bytes1, bytes2, bytes3... bytes32
*/
bytes1 a = 0xb5;
bytes2 b = 0xb5c2;
```

Or a dynamically-sized bytes array

```solidity
bytes c = new bytes(200);
```

## String
If you want to store a text, you will use a string.
The minimum size stored for a string is 32 bytes.

But it depend on the size of the string you want to store because it's a dynamically-sized UTF-8-encoded string.

More info here : https://docs.ethers.io/v5/api/utils/strings/#Bytes32String

```solidity
string myString = "text";
```

## Mapping

Let's talk about probably the more important type.
Mapping is like a hash table or dictionary.

The syntax is (KEY => VALUE)

Where KEY can be : any type but not contract types, enums, mappings, structs, and any array type

And VALUE can be : any type, including mapping 

```solidity
mapping(address => uint) public myMapping;
```

You can only store this type in a "storage" witch is something I will present in a other video.

The size used by the mapping is dynamical

I must confess, I'm not sure about the size. What I understand is it use at minium 32 bytes.

>Due to their unpredictable size, mappings and dynamically-sized array types cannot be stored « in between » the state variables preceding and following them. Instead, they are considered to occupy only 32 bytes with regards to the rules above and the elements they contain are stored starting at a different storage slot that is computed using a Keccak-256 hash.
>
>source: https://solidity-fr.readthedocs.io/fr/latest/internals/layout_in_storage.html#mappings-and-dynamic-arrays


And the maximum size you can store is 2^256 * 32 bytes
>The cost of an addition to or a read from a mapping does not change with the number of keys mapped. The location of a value key is computed by sha3(key, p) where p is the storage slot that acts as the pointer of the mapping. As you can see the location of an individual value is random, and you may theoretically overwrite data from another key.
>The total storage is 2^256 * 32 bytes, so there is, in practice, quite some time before you indeed overwrite old data.
>
>source: https://ethereum.stackexchange.com/a/8653

I'm really not sure if you have the answer, let me know.

For your information, you cannot itterate on a mapping, check the limitations of this type here: 
https://medium.com/coinmonks/solidity-tutorial-all-about-mappings-29a12269ee14



# Enums
 
Enums generate user-defined solidity types that contain options.

The options are represented by unsigned integer values starting from 0 and have a maximum size of 256 members

Size = (2 **256 * membersCount) bytes 

```solidity
    enum MyEnum {
        One,
        Two,
        Three
    }
```

# Fixed point numbers

A little bonus, It's a kind of float or double but not really, it will allow you to manage numbers with a decimal part.

>The main difference between floating point (float and double in many languages, more precisely IEEE 754 numbers) and fixed point numbers is that the number of bits used for the integer and the fractional part (the part after the decimal dot) is flexible in the former, while it is strictly defined in the latter. Generally, in floating point almost the entire space is used to represent the number, while only a small number of bits define where the decimal point is.
>
>source : https://docs.soliditylang.org/en/latest/types.html#fixed-point-numbers

Fixed point numbers are not fully supported by Solidity yet. 
They can be declared, but cannot be assigned to or from.


```solidity
fixed256x18 myFixed;
```


## Conclusion


If you want to know more about this topic look at my solidity playlist.

Don't miss anything by subscribing this channel.
Feel free to comment, like, and hit the bell by the way.

Check my socials medias, medium, github, even my vlogs ! 
All that stuff in the description below.

It was Steve Anthony, have a good day and see you next time ;)