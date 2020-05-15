pragma solidity >=0.4.22 <0.7.0;

contract ETHWallet{
    address payable public owner;

    constructor(address payable _owner) public{
        owner = _owner;
    }
    function deposit()payable public {
        // Deposit directly from the enviroment no need for input here
    }
    function send(address payable to, uint _amount) public{
        if(msg.sender == owner){
            to.transfer(_amount);
            return;
        }
        revert('sender not allow to send');
    }
    function checkBalance() view public returns(uint){
        return address(this).balance;
    }
}