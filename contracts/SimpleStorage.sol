// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title SimpleStorage
/// @notice Stores a single number and a name-to-number registry.
contract SimpleStorage {
    uint256 private favoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    event NumberStored(uint256 oldNumber, uint256 newNumber);

    /// @notice Overwrite the stored number.
    function store(uint256 _favoriteNumber) public {
        emit NumberStored(favoriteNumber, _favoriteNumber);
        favoriteNumber = _favoriteNumber;
    }

    /// @notice Read the stored number.
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    /// @notice Add a person and map their name to their number.
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
