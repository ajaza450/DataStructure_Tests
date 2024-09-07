//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


/*
Input: arr[] = {1, 2, 4, 6, 3, 7, 8}, N = 8
Output: 5
Explanation: The missing number between 1 to 8 is 5
*/


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
