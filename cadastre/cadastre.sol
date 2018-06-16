pragma solidity ^0.4.18;

contract cadastre {
    
    struct Parcel {
        int8 gpsLat;
        int8 gpsLong;
    }
    
	Parcel[] public parcels;
	
	function createParcel(int8 _lat, int8 _long) public {
	    parcels.push(Parcel({ 
	        gpsLat : _lat, 
	        gpsLong : _long
	    }));
	}
	
	struct Participant {
        bytes name;
        bool homeOwner;
    }

	//participant is a state variable that records a 
	//'Participant' struct for each possible address.
	mapping(address => Participant) public participants;

	function newParticipant (address _partA, bytes _partN, bool _homeO) public {
	participants[_partA] = Participant({ name : _partN, homeOwner : _homeO });
	}
}  