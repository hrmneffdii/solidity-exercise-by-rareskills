// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract OriginVsSender {
    uint256 public number;

    // Helper function to check if an address is a contract
    function isContract(address account) internal view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }

    function setNumber(uint256 num) external {
        // Ensure msg.sender is not a contract
        require(!isContract(msg.sender), "Contracts are not allowed");

        // Set the number
        number = num;
    }
}
