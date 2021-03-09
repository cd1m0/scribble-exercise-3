pragma solidity 0.6.10;

/// invariant {:msg ""} x>0;
contract Foo {
    int x;

    constructor() {
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

    function fail() internal {
        x = -1;
    }

    function break_inv_internal() internal {
    	int oldX = x;
        // Not an observable point
        x = -1;

    	x = oldX;
    }

    function fail_ext() public {
        int oldX = x;
        x = 0;
        // Should detect failure here
        this.inc();
        // At this point x>0
    	x = oldX;
    }
}
