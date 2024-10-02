// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

import { System } from "@latticexyz/world/src/System.sol";
import { BalanceTable } from "../codegen/index.sol";

contract MintSystem is System {
    function mint(uint32 item) public {
        //uint32 balance = BalanceTable.get();
        //BalanceTable.set(_msgSender(), item, balance+5);
    }
}
