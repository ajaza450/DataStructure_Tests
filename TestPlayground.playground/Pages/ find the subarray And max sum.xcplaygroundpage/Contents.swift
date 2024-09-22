//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/**
 
 Given an array arr[], the task is to find the subarray that has the
 maximum sum and return its sum.
  
 Input: arr[] = {2, 3, -8, 7, -1, 2, 3}
 Output: 11
 Explanation: The subarray {7, -1, 2, 3} has the largest sum 11.
 Input: arr[] = {-2, -4}
 Output: –2
 Explanation: The subarray {-2} has the largest sum -2.
 Input: arr[] = {5, 4, 1, 7, 8}
 Output: 25
 Explanation: The subarray {5, 4, 1, 7, 8} has the largest sum 25.
 
 */


func maxarraySum(_ array: [Int])->Int{
   
    var maxSumfor = array[0]
    var currentMax = array[0]
    var start = 0
    var end = 0
    var temstart = 0
    
    for i in 1..<array.count {
       // print("array[i]",array[i], "currentMax",currentMax, "currentMax + array[i]",currentMax + array[i])
        if array[i] > currentMax + array[i] {
            //print("he",i)
            currentMax = array[i]
            temstart = i
        }else{
            currentMax += array[i]
        }
        
        if  currentMax > maxSumfor {
          //  print(currentMax,">", maxSumfor,"i",i,"temstart",temstart)
            maxSumfor = currentMax
            start = temstart
            end = i
        }
        
        
    }
    
    
    let subarray = Array(array[start...end])
    
    print("subarray = \(subarray)", maxSumfor)
    
    
   return maxSumfor
   
}

let arr = [2, 3, -8, 7, -1, 2, 3]
let arr3 = [-2, -4]
let arr4 = [5, 4, 1, 7, 8]
let result = maxarraySum(arr)
print(result)
