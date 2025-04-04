// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract visibilty{
    function privatefunc() private pure returns (string memory){
        return "Private Function Called";
    }

    function test_privateFunc() public pure returns (string memory){
        return privatefunc();
    }

    function internalFunc() internal pure returns (string memory) {
        return "Internal Function Called";
    }

    function test_internalFunc() public  pure returns(string memory){
        return internalFunc();
    }

    function publicFunc() public pure returns (string memory) {
        return "Public Function Called";
    }

    function test_publicFunc() public pure returns (string memory) {
        return publicFunc();
    }

    function externalFunc() external  pure returns (string memory){
        return "External Function Called";
    }

//     function test_externalfunc() public pure returns(string memory){
//         return externalFunc();
// }
}

contract isVisibilty is visibilty{
    string public str = test_privateFunc();
    string public  _str = internalFunc();
    string public Str = publicFunc();
    // string public ExStr = externalFunc()

}