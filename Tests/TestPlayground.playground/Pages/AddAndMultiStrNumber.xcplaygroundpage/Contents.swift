//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


/**
 
 n = 1234
  
 result = (1*2*3*4) - (1+2+3+4)
 
 */

let n = 58

func getdiff(_ n: Int) -> Int{
    var multi = 1
    var sum = 0
    let str = String(n)
    for i in str {
     let num = Int(String(i)) ?? 0
        multi = multi * num
        //print("heo",multi)
        sum = sum + num
    }
    return multi - sum
    
}
let result = getdiff(45)
print("result", result)



func calculateDifference(_ n: Int) -> Int {
    let digits = String(n).compactMap { Int(String($0)) }
    print(digits)
    let product = digits.reduce(1, *)
    let sum = digits.reduce(0, +)
    return product - sum
}

let result1 = calculateDifference(45)
print("Result:", result1)

