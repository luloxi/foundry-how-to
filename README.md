# Foundry knowledge base

## Useful commands

- `forge init project_name` - Create new project
- `forge build` - Compile contracts
- `forge fmt` - Give format to Solidity code

## Tests

- `forge test`
- `forge test --match-path test/TestName.t.sol`

- Add the modifier `-vvvv` for more verbosity. More "v" make it more verbose.
- Using `address(1)` refers to the testing contract itself.
- `import "forge-std/Test.sol";` for testing functionalities such as AssertEq (assert equal)
- When starting test functions name with `testFail` we're telling Foundry that that function is meant to fail.

### Prank

- `vm.prank()` changes msg.sender to whatever address is between the parenthesis
- Set msg.sender to address(1) for multiple calls: `vm.startPrank(address(1))`
- Stop setting msg.sender to that address: `vm.stopPrank()`

## Adding libraries

This installs from a GitHub repo:

- `forge install username/repoName`

Can also add libraries with `npm i @library-name` too, then add a remapping in the **remappings.txt** file to make them available

## Updating/removing libraries

- `forge update lib/repoName`
- `forge remove repoName`

## Logging to console (console.log)

1. Add an import with `import "forge-std/console.sol";` to the .sol file
2. Add a `console.log(variable, variabl2, ...);` including what you want to log
3. Run the tests for that file including at least `-vv` for console.log to be displayed

There are certain things that console.log won't display, but there are more specific functions for that, such as logInt(number)

```code
int x = -1;
console.logInt(x);
```
