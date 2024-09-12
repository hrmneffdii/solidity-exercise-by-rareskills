// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract IsSorted {
    /**
     * The goal of this exercise is to return true if the members of "arr" is sorted (in ascending order) or false if its not.
     */
    function isSorted(uint256[] calldata arr) public pure returns (bool) {
        for(uint i = 0; i < arr.length - 1; i++){
            for(uint j = i + 1; j < arr.length; j++){
                if(arr[i] > arr[j]){
                    return false;
                }
            }
        }

        return true;
    }
}
