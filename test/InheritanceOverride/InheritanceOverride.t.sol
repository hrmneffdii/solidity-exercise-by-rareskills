// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../../src/InheritanceOverride/InheritanceOverride.sol";

contract InheritanceOverrideTest is Test {
    InheritanceOverride public inheritanceOverride;

    function setUp() public {
        inheritanceOverride = new InheritanceOverride();
    }

    function testGetNumber() external view{
        uint256 number = inheritanceOverride.getNumber();

        assertEq(number, 10, "expected number to be 10");
    }
}
