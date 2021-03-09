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
        x+=t;
    }
}
