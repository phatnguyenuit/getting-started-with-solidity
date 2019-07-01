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
    enum State { Waiting, Ready, Active }
    
    State public state;
    
    // declare struct
    struct Person {
        uint id;
        string firstName;
        string lastName;
    }
    
    Person[] public people;
    uint256 public peopleCount;
    
    // mapping Person to MyContract as a map with key and value
    mapping(uint => Person) public mappingPeople;
    
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
    
    function addPerson(string memory _firstName, string memory _lastName) public {
        people.push(Person(1, _firstName, _lastName));
        peopleCount += 1;
    }
    
    function addPersonMapping(string memory _firstName, string memory _lastName) public {
        peopleCount += 1;
        mappingPeople[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
}
