# Foundry knowledge base

## Useful commands

`forge build` - Compile contracts
`forge fmt` - Format Solidity code

## Tests

`forge test`
`forge test --match-path test/TestName.t.sol`

### Adding/updating/removing libraries

This installs from a GitHub repo
`forge install username/repoName`

Self explanatory
`forge update lib/repoName`
`forge remove repoName`

Can add libraries with `npm i @library-name` too, then add a remapping in the **remappings.txt** file to make them available
