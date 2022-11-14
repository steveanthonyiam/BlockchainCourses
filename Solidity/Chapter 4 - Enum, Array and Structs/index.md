## Intro

In the last video, we discovered the types you can use in solidity.
You are now ready and probably eager to create your first contract.
In this video I will show you how to define a function and how to call it when the contract is deployed.
I will also talk you about the different kind of visibility you could use.

Hi my name is Steve Anthony, welcome on my new channel Proof of dev. 

Roll the intro.



## Enum

https://solidity-by-example.org/enum/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Enum {
    // Enum representing shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // Default value is the first element listed in
    // definition of the type, in this case "Pending"
    Status public status;

    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // You can update to a specific enum like this
    function cancel() public {
        status = Status.Canceled;
    }

    // delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
}
# Structs
You can define your own type by creating a struct.

They are useful for grouping together related data.

Structs can be declared outside of a contract and imported in another contract.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

https://solidity-by-example.org/structs/

# Array

https://solidity-by-example.org/array/

contract Array {
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    // Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizeArr;
}