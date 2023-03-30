# Foundry knowledge base

## Useful commands

- `forge init project_name` - Create new project
- `forge build` - Compile contracts
- `forge fmt` - Give format to Solidity code

## Tests

- `forge test`
- `forge test --match-path test/TestName.t.sol`

Add the modifier `-vvvv` for more verbosity. More "v" make it more verbose.

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
