// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import "../chall/EVMVM.sol";
import "../chall/Setup.sol";

contract Solution {
    Setup public setup;
    bytes32 private immutable nope = bytes32(uint(0x00));

    constructor(address setupAddress) {
        setup = Setup(setupAddress);
    }

    function solve(uint step) public {
        assert(!setup.isSolved());
        EVMVM vm = setup.metametaverse();

        // let's push some values onto the stack!
        // sstore(0x1, address(setup))
        // delegatecall(<number>, address(this), 0, 0, 0, 0)

        uint addressThis = uint256(uint160(address(this)));
        uint addressSetup = uint256(uint160(address(setup)));

        if (step == 1 || step == 7) {
            pushZero(vm);
        }
        
        if (step == 0) {
            pushOne(vm);
        } else if (step >= 1 && step < 6) {
            pushNumber(vm, int((5 - (step - 1)) * 32 - 1), int((4 - (step - 1)) * 32), addressSetup);
        } else if (step == 6) {
            run(vm, 0x55);
        } else if (step >= 7 && step < 12) {
            pushNumber(vm, int((5 - (step - 7)) * 32 - 1), int((4 - (step - 7)) * 32), addressThis);
        } else if (step == 12) {
            dup(vm);
            pushZero(vm);
            dup(vm);
            dup(vm);
            dup(vm);
            run(vm, 0xF4);

            if(!setup.isSolved()) {
                revert("not solved???");
            }
        }
    }

    fallback() external {
        uint setupAddr = 0;
        assembly {
            setupAddr := sload(0x1)
        }
        Setup(address(uint160(setupAddr))).solve();
    }

    function run(EVMVM vm, uint8 opcode) private {
        vm.enterTheMetametaverse(bytes32(uint(opcode)), nope);
    }

    function pushNumber(EVMVM vm, int startBit, int endBit, uint add) private {
        for (int bit = startBit; bit >= endBit; bit--) {
            pushOne(vm);
            run(vm, 0x91);
            run(vm, 0x1B);

            uint target = (add >> uint(bit)) & 0x1;
            if (target == 1) {
                pushOne(vm);
                run(vm, 0x1);
            }
        }
    }

    function pushZero(EVMVM vm) private {
        run(vm, 0x46);
        run(vm, 0x46);
        run(vm, 0x18);
    }

    function pushOne(EVMVM vm) private {
        run(vm, 0x46);
        run(vm, 0x46);
        run(vm, 0x04);
    }

    function dup(EVMVM vm) private {
        run(vm, 0x80);
    }
}
