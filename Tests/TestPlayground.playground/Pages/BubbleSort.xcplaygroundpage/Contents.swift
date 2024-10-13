//: [Previous](@previous)

import Foundation

// Algorithm #007: Bubble sort


var array = [6,1,2,64,2, 3]

func BubbleSort(_ arr: inout [Int]){
   
    for _ in 0..<arr.count {
        
        for j in 1...arr.count - 1 {
            if arr[j - 1] > arr[j]{
                let temp = arr[j - 1 ]
                arr[j - 1] = arr[j]
                arr[j] = temp
            }
        }
        
        
    }
}

print("before",array)
BubbleSort(&array)
print(array)
