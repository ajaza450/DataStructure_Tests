//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)



func findSecondLargestNum(in arr: [Int]) -> Int? {
    guard arr.count >= 2 else {
        // Handle the case where the array has less than two elements
        return nil
    }

    var largest = 0
    var secondLargest = 0

    for num in arr {
        if num > largest {
            secondLargest = largest
            largest = num
        } else if num > secondLargest && num != largest {
            secondLargest = num
        }
    }

    return secondLargest
}

//let arr = [3, 3]
let arr = [3,3, 3, 8, 8, 8, 8, 9, 3, 1, 1]
if let result = findSecondLargestNum(in: arr) {
    print("The second-largest number is: \(result)")
} else {
    print("The array does not have a second-largest number.")
}
