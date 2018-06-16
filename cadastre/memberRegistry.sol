pragma solidity ^0.4.18;

contract memberRegistry {

	event newMember();
	
	struct registryMember {
		bytes firstName;
        bytes lastName;
	}
	
	uint private lastId;
	
	//Record a bool (registered or not) for each address
	//mapping (address => bool) registered;

	function memberRegistry() public {
	   lastId = 0;
	}
    
    //Record a registryMember structure for each registryMemberId
	mapping (uint => registryMember) public members;
	
	function addMember (bytes _fname, bytes _lname) public {
		//registered[msg.sender] = true;
	    lastId += 1;
	    members[lastId].firstName = _fname;
	    members[lastId].lastName = _lname;
	    newMember();
	}
	
	function clear () public {
		lastId = 0;
	}
	
}