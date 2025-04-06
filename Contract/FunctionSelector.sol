// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract FunctionSelector {
    function getSeclector(string calldata _func) external pure returns(bytes4){
        return  bytes4(keccak256(bytes(_func)));
    }
}

contract Recive {
    event Log(bytes);

    function recive(address _to , uint256 _amount) external  {
        emit Log(msg.data);
    }
}
// 0xbbd3fd61
// 0xbbd3fd61
// 0000000000000000000000005b38da6a701c568545dcfcb03fcb875f56beddc
//4000000000000000000000000000000000000000000000000000000000000007b