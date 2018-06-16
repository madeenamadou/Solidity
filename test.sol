pragma solidity ^0.4.18;

contract storeCar {
    
    struct Car {
        bytes make;
        bytes model;
    }
    
	Car[] public cars;
	
	//mapping (address => Car) public car;
	
	function addCar(bytes _make, bytes _model) public returns (Car _sender) {
	    cars.push(Car({ make : _make, model : _model }));
	    return Car({ make : _make, model : _model });
	}
	
	/*
	function getCar (address _owner) view public returns (Car _carData) {
	    return car[_owner];
	    car[_sender] = Car({ owner : _sender, make : _make, model : _model });
	}*/

}