pragma solidity ^0.8.10;

import "forge-std/Test.sol";
import "forge-std/console.sol";

contract ConsoleTest is Test {
    function testLogSomething() public view {
        console.log("Log something here", 123);

        int x = -1;
        console.logInt(x);
    }
}