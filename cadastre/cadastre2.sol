pragma solidity ^0.4.18;

contract landRegistry {
    
    struct landTitle {
        bytes parcelId;
        int8[] locationCoord;
        bool usageRestriction;
        bytes ownerId;
    }
    
	//Record a landTitle structure for each parcelId
	mapping (bytes => landTitle) public landtitle;
	
	struct registryMember {
        bytes registryMemberId;
        bytes lastName;
        bytes fisrtName;
    }
    
    //Record a registryMember structure for each registryMemberId
	mapping (bytes => registryMember) public registrymember;

}