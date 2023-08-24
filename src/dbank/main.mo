import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

//actor = class
actor DBank {
//variable
//stable variable == persistent variable between dfs deploy
  stable var currentValue: Float= 300;
  currentValue := 300;

//constant
  stable var startTime = Time.now();
  startTime := Time.now();
  Debug.print(debug_show(startTime));
    

  let id = 1234122315412;
  
//debug print accepts only text
//debug_show converts int to text  
//Debug.print(debug_show(id));
 
 //function
public func topUp(amount: Float) {
  currentValue += amount;
  Debug.print(debug_show(currentValue));
  //http://localhost:8000/?canisterId=r7inp-6aaaa-aaaaa-aaabq-cai&id=rrkah-fqaaa-aaaaa-aaaaq-cai
 };
 
 //CandidUI => testing via web browser => https://internetcomputer.org/docs/current/developer-docs/backend/candid/candid-howto
// http://localhost:8000/?canisterId=r7inp-6aaaa-aaaaa-aaabq-cai&id=rrkah-fqaaa-aaaaa-aaaaq-cai
 public func widrawn(amount: Float) {
  let tempValue: Float = currentValue - amount;
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
public query func checkBalance(): async Float {
  return currentValue;
};

public func compound() {
  let currentTime = Time.now();
  let timeElapsedS = (currentTime - startTime) / 1000000000;
   
  Debug.print(debug_show(timeElapsedS));

//** => pow
  currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
  startTime := currentTime;
};

};
