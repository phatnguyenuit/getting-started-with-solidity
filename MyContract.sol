pragma solidity ^0.5.8;

contract MyContract {
    string value;
    
    // expose publicValue can be called outside of the contract
    string public publicValue = "publicValue";
    
    // declare constant property
    string public constant constantValue = "constantValue";
    
    // declare bool property
    bool public myBool = true;
    
    // declare integer property
    int public myInt = -1;
    uint public myUint = 1;
    
    // declare enum
    enum State { Waiting, Ready, Active};
    
    State public state;
    
    constructor() public {
        value = "myValue";
        state = State.Waiting;
    }
    
    function getValue() public view returns(string memory) {
        return value;
    }
    
    function setValue(string memory _value) public {
        value = _value;
    }
    
    function activate() public {
        state = State.Active;
    }
    
    function checkIsActive() public view returns(bool) {
        return state == State.Active;
    }
}
