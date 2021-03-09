pragma solidity 0.6.10;

/// invariant {:msg ""} x>0;
contract Foo {
    int x;

    constructor() public {
	x = 1;
    }

    function inc() public {
        x++;
    }

    function add(int t) public {
        require(t>0);
        require(t < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
        require(x < 340282366920938463463374607431768211455  - t);
        x+=t;
    }
}
