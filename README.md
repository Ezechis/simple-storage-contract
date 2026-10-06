# Simple Storage Contract

A beginner Solidity smart contract that stores and retrieves a number and keeps a small name-to-number registry.

- `store(uint256)` — save a number (emits `NumberStored`)
- `retrieve()` — read it back
- `addPerson(string, uint256)` — add to `people[]` and `nameToFavoriteNumber`

Try it in [Remix](https://remix.ethereum.org): paste `contracts/SimpleStorage.sol`, compile with 0.8.20+, deploy, and call the functions.

License: MIT
