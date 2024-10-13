//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
Given a one-dimensional array representing a single lane with vehicles moving in either directions, write a function to determine how many pairs of vehicles are moving towards each other.
Input: [>, <, <, >, >] Output: 2
Input: [>, <, >, >, <] Output: 4
*/

let vehicles1: [Character] =  [">", "<", "<", ">", ">"]
let vehicles2: [Character] =  [">", "<", ">", ">", "<"]

func countpair(_ vehicles: [Character])-> Int {
   var rightmove = 0
   var collision = 0
   
   for vehicle in vehicles {
       if  vehicle == ">" {
           rightmove += 1
       }else if vehicle == "<" {
           collision += rightmove
       }
   }
   
  
  return collision
}

var result1  = countpair(vehicles1)
//var result2  = countpair(vehicles2)
print("Result = \(result1) ")



/**
 
 write func for expresion these valid or not
 
return true  with this "{{}[]}", return false  with this "{(})" ,"[jdhbska{}()]" , "{[hdsjkc(TT](})"
 
 */



func validdateExp( exp: String)-> Bool {
    var charArry: [Character] = []
    let matchP  : [Character: Character] = ["}":"{", ")":"(","]": "["]
   
    for char in exp {
        if matchP.values.contains(char) {
            charArry.append(char)
        }else if !matchP.values.contains(char){
            if let match = matchP[char],!charArry.isEmpty, charArry.last == match {
                charArry.removeLast()
            }
        }else{
            //return false
        }
        
    }
    return charArry.isEmpty
}


print(validdateExp(exp:  "{{}[]}"))
print(validdateExp(exp:  "{(})"))
print(validdateExp(exp:  "[jdhbska{}()]"))
print(validdateExp(exp:  "{[hdsjkc(TT](})"))
