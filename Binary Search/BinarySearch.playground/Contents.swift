import UIKit

/**
 Binary Search
 
 Recursively splits the array in half until the value is found.
 
 If there is more than one occurrence of the search key in the array, then
 there is no guarantee which one it finds.
 
 Note: The array must be sorted!
 **/




// The recursive version of binary search.


func binarySearc<T:Comparable>(_ a : [T], _ key: T, _ range: Range<Int>) ->Int? {
    
    if range.lowerBound >= range.upperBound {
        return nil
    }else {
        var midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        
        if a[midIndex] > key {
            return binarySearc(a, key, range.lowerBound ..< midIndex)
        }else if  a[midIndex] < key  {
            return binarySearc(a, key, midIndex + 1 ..< range.upperBound)
        }else{
            return midIndex
        }
    }
    
}



/**
 The iterative version of binary search.
 
 Notice how similar these functions are. The difference is that this one
 uses a while loop, while the other calls itself recursively.
 
 **/


func binarySearch<T:Comparable>(_ a: [T], key: T) -> Int?{
    var lowerBound = 0
    var upperBound = a.count
    
    while lowerBound < upperBound {
        let midIndex = lowerBound + (upperBound - lowerBound) / 2
        if a[midIndex] == key {
            return midIndex
        }else if a[midIndex] < key{
            lowerBound  = midIndex + 1
        }else {
            upperBound = midIndex
        }
    }
    
    return nil
}




// An unsorted array of numbers
let numbers = [11, 59, 3, 2, 53, 17, 31, 7, 19, 67, 47, 13, 37, 61, 29, 43, 5, 41, 23]

// Binary search requires that the array is sorted from low to high
let sorted = numbers.sorted()

print(binarySearc(sorted, 2, 0 ..< sorted.count))   // gives 0
print(binarySearc(sorted, 67, 0 ..< sorted.count))  // gives 18
print(binarySearc(sorted, 43, 0 ..< sorted.count))  // gives 13
print(binarySearc(sorted, 42, 0 ..< sorted.count))  // nil


// Using iterative solution
binarySearch(sorted, key: 2)   // gives 0
binarySearch(sorted, key: 67)  // gives 18
binarySearch(sorted, key: 43)  // gives 13
binarySearch(sorted, key: 42)  // nil


