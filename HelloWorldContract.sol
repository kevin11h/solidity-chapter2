pragma solidity ^0.4.23;

contract Greetings {
     string public message;  // storage instance variable exists in the life of a contract instance
     
     // visible to entire world, any value assigned will be stored for eternity
     
     constructor(string initialMessage) public {
         message = initialMessage;  // initialize state variables
     }
     
     function setMessage(string newMessage) public returns (string) {
         message = newMessage;
         return message;
     }
     
     function getMessage() public view returns (string) {
         return message; // return only use in function with `view'
         
         // view signifies that the message data is not attempted to change
         // or modification
     }
}
