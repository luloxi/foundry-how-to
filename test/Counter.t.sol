// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
    }

    // Tests must start with "test" keyword
    function testInc() public {
        counter.inc();
        assertEq(counter.count(), 1);
    }

    // "Fail" keyword indicates a test is expected to fail
    function testFailDec() public {
        counter.dec();
    }

    function testDecUnderflow() public {
        // Here we are more specific than in testFailDec about the type of error
        vm.expectRevert(stdError.arithmeticError);
        counter.dec();
    }

    function testDec() public {
        counter.inc();
        counter.inc();
        counter.dec();
        assertEq(counter.count(), 1);
    }
}
