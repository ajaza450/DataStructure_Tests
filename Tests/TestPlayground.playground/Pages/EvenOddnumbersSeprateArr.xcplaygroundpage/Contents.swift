//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next) Even number one side and odd number other side

var array = [1,24,2,3,5,5]



func arrangeEvenOdd( arr: inout [Int]) {
    var left = 0
    var right = arr.count - 1
    
    while left < right {
//        print("step 1 : ",left,"right",right)
//        print("Move left pointer to first odd number from left")
        // Move left pointer to first odd number from left
        while arr[left] % 2 == 0 && left < right {
            print("step 2 : ",left,"right",right,"arr[left]",arr[left])
            left += 1
        }
       // print(" Move right pointer to first even number from right")
        // Move right pointer to first even number from right
        while arr[right] % 2 != 0 && left < right {
            print("step 3 : ",left,"right",right,"arr[right]",arr[right])
            right -= 1
        }
        
        // Swap the two elements
        if left < right {
            print("step 4 : ",left,"right",right,"arr",arr)
            let temp = arr[left]
            arr[left] = arr[right]
            arr[right] = temp
            
            left += 1
            right -= 1
            print("step 5 : ",left,"right",right,"arr",arr)
        }
    }
}

arrangeEvenOdd(arr: &array)
print(array) // Output: [4, 2, 3, 1, 5]


