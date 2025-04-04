// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Payable {
    // state variable (address)
    // constractor 
    // fucntion 

    address payable public Owner = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    // address public currentOwner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    constructor () payable  {
    }

    function CheckBalance() public view returns(uint256){
        return address(this).balance;
    }

    function depositeMoneyToTheContract() payable public {

    }


function depositTOOwner() public{
    Owner.transfer(address(this).balance);
}
   
} 