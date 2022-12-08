//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

contract checkOwnerShip{
    uint256 number = 8;
    address owner;

    constructor(){
        owner = msg.sender;
           }
    modifier onlyOwner{
 
    require(owner!=msg.sender,"Owner is not equals to sender");
           _;
    }

function anyoneCanCall() public {
     number+=1;
}

function onlyOwnerCanCall()public onlyOwner {
    number+=5;
}
function checkBalance() public view returns (uint256){
 uint256 balance = address(this).balance;
return balance;
}


}
