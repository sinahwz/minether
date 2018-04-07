pragma solidity ^0.4.2;

contract Adoption {
	address[16] public adopters; // array of etheruem addresses of length 16

	// Pet Adoption function
	function adopt(uint petId) public returns (uint) {
		require(petId >= 0 && petId <= 15);
		
		adopters[petId] = msg.sender; // msg.sender is the address of the caller

		return petId;
	}

	// Get adopters
	function allAdoptors() public view returns(address[16]) {
		return adopters;
	}
}