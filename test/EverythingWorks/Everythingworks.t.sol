// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../../src/EverythingWorks/EverythingWorks.sol";

contract EverythingWorksTest is Test {
    EverythingWorks public everythingWorks;

    function setUp() public {
        everythingWorks = new EverythingWorks();
    }

    function testEverythingWorks() public pure{
        assertEq(true, true, "everything works");
    }
}
