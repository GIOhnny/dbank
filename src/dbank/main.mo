import Debug "mo:base/Debug";

//actor = class
actor DBank {
//variable
//stable variable == persistent variable between dfs deploy
  stable var currentValue = 300;
  //currentValue := 100;

//constant
  let id = 1234122315412;
  
//debug print accepts only text
//debug_show converts int to text  
//Debug.print(debug_show(id));
 
 //function
public func topUp(amount: Nat) {
  currentValue += amount;
  Debug.print(debug_show(currentValue));
  //http://localhost:8000/?canisterId=r7inp-6aaaa-aaaaa-aaabq-cai&id=rrkah-fqaaa-aaaaa-aaaaq-cai
 };
 
 //CandidUI => testing via web browser => https://internetcomputer.org/docs/current/developer-docs/backend/candid/candid-howto
// http://localhost:8000/?canisterId=r7inp-6aaaa-aaaaa-aaabq-cai&id=rrkah-fqaaa-aaaaa-aaaaq-cai
 public func widrawn(amount: Nat) {
  let tempValue: Int = currentValue - amount;
if (tempValue >= 0) {
  currentValue -= amount;
  Debug.print(debug_show(currentValue));
}
else {
  Debug.print("Not enough money!");
};
 };
//topUp();

//query function with return value
public query func checkBalance(): async Nat {
  return currentValue;
};



 };
