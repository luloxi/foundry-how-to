pragma solidity ^0.8.17;

import "solmate/tokens/ERC20.sol";

contract Token is ERC20("name", "symbol", 18) {}