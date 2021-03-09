pragma solidity 0.6.10;

/// invariant {:msg "x is positive"} x>0;
contract Foo {
    int x;

    constructor() public {
    }

    function inc() public {
        x++;
    }
}
