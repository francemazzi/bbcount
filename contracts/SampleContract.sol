//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract Wallet {
    uint public myValue;
    address public myAdress;
    address public someAdress;
    uint public myStorage;

    uint public changeCounter;

    constructor() {
        myAdress = msg.sender;
    }

    function getMystorage() public view returns(uint) {
        return myStorage;
    }
    function setMyStorage(uint  _NewAdd, uint  _NewDiff, uint  _newVar) public returns(uint) {
        if (msg.sender == myAdress){
            if(_NewAdd > _NewDiff) {
                changeCounter++;
                _newVar = myStorage + _NewAdd;
            } else if (_NewDiff > _NewAdd) {
                changeCounter++;
                _newVar = myStorage + _NewDiff;
            } else {
                myStorage = _newVar;
            }
        }
        return _newVar;
    }


}

