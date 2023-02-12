// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import "../chall/Setup.sol";

contract Solution {
    constructor(Setup setup) {
        assert(!setup.isSolved());
        setup.friend().burn(1);
        assert(setup.isSolved());
    }
}
