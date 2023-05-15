//: [Previous](@previous)

import Foundation


//: Prime numbers are those numbers that are only divisible by 1 and itself. Or we can say prime number have only two factors that are 1 and the number itself.





func check_prim_num(_ num: Int)-> Bool{
    
    // Checking if num for 1 or 0
    // 1 and 0 are not prime number.
    // So, if num is 1 or 0, then return false
    // Which means the number is not prime number
    if(num == 1 || num == 0){
       return false
    }

    // For loop starts from 2 to num - 1
    for j in 2..<num{

    // Checking the num is divisible by j, if yes
    // then the num is not prime number
       if (num % j == 0){
          return false
       }
    }
    // Else num is prime number
    return true
 }


var lowLimit = 1
var upperLimit = 20




for k in stride(from: lowLimit, to: upperLimit, by: 1)
{
    
    if (check_prim_num(k)){

      // Display only prime number
      print(k)
   }
    
}
