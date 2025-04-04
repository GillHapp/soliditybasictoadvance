// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Recive{
   
   receive() external payable {}// ether but not data 
   fallback() external payable{}// ether as well as data 

   // check contract balance 

   function getBalance() public view returns(uint256) {
       return address(this).balance;
    }
}

contract SendingEther{

    function sendViaTrasfer(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) public payable {
     bool sent =  _to.send(msg.value);
     require(sent, 'Failed to send ether');
    }

 function sendViaCall(address payable _to) public payable {
    if (msg.value > 0) {
        revert("No ether value");
    }
    (bool sent, ) = _to.call{value: msg.value}("");
    require(sent, "Failed to send Ether");
}


}

