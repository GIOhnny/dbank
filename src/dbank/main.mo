import Debug "mo:base/Debug";

//actor = class
actor DBank {
//variable  
  var currentValue = 300;
  currentValue := 100;

//constant
  let id = 1234122315412;
  
//debug print accepts only text
//debug_show converts int to text  
// Debug.print(debug_show(id));
 
 //function
public func topUp(amount: Nat) {
  currentValue += amount;
  Debug.print(debug_show(currentValue));
  //http://localhost:8000/?canisterId=r7inp-6aaaa-aaaaa-aaabq-cai&id=rrkah-fqaaa-aaaaa-aaaaq-cai
 };
 
// http://localhost:8000/?canisterId=r7inp-6aaaa-aaaaa-aaabq-cai&id=rrkah-fqaaa-aaaaa-aaaaq-cai
 public func widrawl(amount: Nat) {
  currentValue -= amount;
  Debug.print(debug_show(currentValue));
 };
//topUp();

 };
