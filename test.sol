//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;import "hardhat/console.sol";
interface High {
   function getgreeting() external view returns(string memory);
}

contract Greeter is High {
    
        string private greeting;
    
    constructor(string memory _greeting) {
        console.log("Deploying a Greeter with greeting:", _greeting);
        greeting = _greeting;
    }
    function getgreeting() public view returns(string memory){
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }
}