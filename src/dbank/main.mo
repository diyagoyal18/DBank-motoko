import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Time "mo:base/Time";
import Float "mo:base/Float";
import Int "mo:base/Int";


actor DBank{
 stable var currentValue:Float = 300;
  //  currentValue := 100;
     // := change the current value only for var keyword
  // let id= 2345675434567;

  stable var startTime = Time.now();
  Debug.print(debug_show(startTime));

    //  Debug.print(debug_show(currentValue));
    //      Debug.print(debug_show(id));

   public func topUp(){
      currentValue+=1;
      Debug.print(debug_show(currentValue));
    };
    // public func topUp(amount: Nat){
    //   currentValue += amount;
    //   Debug.print(debug_show(currentValue));
    // };

    // topUp();

    public func withdrawl(amount: Float){
      let tempValue:Float = currentValue - amount;
      if (tempValue >=0){
      currentValue-=amount;
      Debug.print(debug_show(currentValue));
      }
      else{
        Debug.print("Error")
      }
    };

    // public func checkBalance():async Float{
    //    return currentValue;
    // };

    public func compound(){
      let currentTime = Time.now();
      let timeElapsedNS = currentTime - startTime;
      let timeElapsedS = timeElapsedNS/1000000000;
      currentValue:= currentValue * (1.01 ** Float.fromInt(timeElapsedS));

      startTime:=currentTime;
    }
 }