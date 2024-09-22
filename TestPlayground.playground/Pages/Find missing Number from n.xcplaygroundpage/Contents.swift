//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


/*
Input: arr[] = {1, 2, 4, 6, 3, 7, 8}, N = 8
Output: 5
Explanation: The missing number between 1 to 8 is 5
*/

// (N) * (N + 1) / 2  //on this method having issue it's will not work if morethen 1 value missing


var arrInt = [5, 2, 4, 6, 3, 7, 8]
func findMissingNumber(_ arr: [Int], _ N: Int) -> Int {
    // Calculate the sum of all numbers from 1 to N
    let expectedSum = (N) * (N + 1) / 2
    // Calculate the sum of array elements
    var actualSum = 0
    for num in arr {
        actualSum += num
    }
    // Find the missing number
    let missingNumber = expectedSum - actualSum
    
    return missingNumber
}

// Example usage
//let arr = [1, 2, 4, 6, 3, 7, 8]
let N = 8
let result = findMissingNumber(arrInt, N)
print("Missing number:", result)



/**
 
 
 Given an unsorted array of size n. Array elements are in the range of 1 to n. One number from set {1, 2, …n} is missing and one number occurs twice in the array. Find these two numbers.
  
 Examples:
  
 Input: arr[] = {3, 1, 3}
 Output: Missing = 2, Repeating = 3
 Explanation: In the array, 2 is missing and 3 occurs twice

 
 */

func findMissignAndRepeat(_ array: [Int], N: Int){
    var repeatedArray = [Int: Int]()
    var missingElements = [Int]()
    
    // find non repeated and repeated elementes
    repeatedArray = array.reduce(into: repeatedArray, { partialResult, value in
        partialResult [value,default: 0] += 1
    })
    
    
    // find missing elements
    for i in 1...N {
        if !repeatedArray.keys.contains(i) {
            missingElements.append(i)
        }
    }
    
    // print repeated elements
    for(element,count) in repeatedArray {
        if count>1 {
            print("repepted \(element) times \(count)")
        }
    }
    
    
    //print missing elements
    print("Missing",missingElements)
    
}


arrInt.sort()
findMissignAndRepeat(arrInt, N: arrInt.last ?? 0)
