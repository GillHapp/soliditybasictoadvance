// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EnodeAndDecode{
    bytes public EncodedData;

    function strEncode(string memory _str, uint256 _x) public {
        EncodedData = abi.encode(_str, _x);
    }

    function decode() public view returns (string memory, uint _y) {
       return abi.decode(EncodedData, (string , uint256));
    }
}






interface IERC20 {
    function transfer(address, uint256) external;
}

contract AbiExample {
    function encodeSig(address to, uint256 amount) public pure returns (bytes memory) {
        return abi.encodeWithSignature("transfer(address,uint256)", to, amount);
    }

    function encodeSel(address to, uint256 amount) public pure returns (bytes memory) {
        return abi.encodeWithSelector(IERC20.transfer.selector, to, amount);
    }

    function encodeCallStyle(address to, uint256 amount) public pure returns (bytes memory) {
        return abi.encodeCall(IERC20.transfer, (to, amount));
    }
}
