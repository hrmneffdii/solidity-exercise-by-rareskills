// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract CodeSize {
    /**
     * The challenge is to create a contract whose runtime code (bytecode) size is greater than 1kb but less than 4kb
     */
    mapping(address => uint) balances;
    uint256 private x;
    address public lastCaller;

    function callMe() external {
        if(msg.sender == lastCaller){
            revert();
        }

        lastCaller = msg.sender;
    }

    function deposit() external payable {
        if (msg.value == 0) {
            revert();
        }

        balances[msg.sender] += msg.value;
    }

    function withdrawl(uint256 _amount) external {
        if (_amount <= 0 || _amount > balances[msg.sender]) {
            revert();
        }

        balances[msg.sender] -= _amount;
    }

    function addf(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    function setX(uint256 newValue) public {
        x = newValue;
    }

    function getX() public view returns (uint256) {
        return x;
    }

    function aa() external view returns (string memory){
         if(msg.sender == lastCaller){
            revert();
        }
        return "Herman effendi";
    }

    function bb() external pure returns (string memory){
        return "Herman effendi";
    }

     function c() external pure returns (string memory){
        return "Herman effendi";
    }

     function d() external pure returns (string memory){
        return "Herman effendi";
    }

     function e() external pure returns (string memory){
        return "Herman effendi";
    }
     function f() external pure returns (string memory){
        return "Herman effendi";
    }

    function g() external pure returns (string memory){
        return "Herman effendi";
    }

     function h() external pure returns (string memory){
        return "Herman effendi";
    }

    
}
