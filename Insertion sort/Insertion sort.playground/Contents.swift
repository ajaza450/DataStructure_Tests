import Foundation

/// Performs the Insertion sort algorithm to a given array
///
/// - Parameters:
///   - array: the array of elements to be sorted
///   - isOrderedBefore: returns true if the elements provided are in the corect order
/// - Returns: a sorted array containing the same elements



func insertionSort<T>(_ array:[T], _ isOrderedBefore: (T,T) -> Bool )-> [T]{
    var sortArray = array
    
    for index in 1..<sortArray.count {
        var currentIndex = index
        let temp = sortArray[currentIndex]
        while (currentIndex > 0 && isOrderedBefore(temp,sortArray[currentIndex - 1])) {
            sortArray[currentIndex]  = sortArray[currentIndex - 1]
            currentIndex -= 1
        }
        
        sortArray[currentIndex] = temp
    }
    
    return sortArray
}




/// Performs the Insertion sort algorithm to a given array
///
/// - Parameter array: the array to be sorted, conatining elements that conform to the Comparable protocol
/// - Returns: a sorted array containing the same elements


func insertionSort<T: Comparable>(_ array:[T])-> [T]{
    var sortArray = array
    
    for index in 1..<sortArray.count {
        var currentIndex = index
        let temp = sortArray[currentIndex]
        while (currentIndex > 0 && temp < sortArray[currentIndex - 1]) {
            sortArray[currentIndex]  = sortArray[currentIndex - 1]
            currentIndex -= 1
        }
        
        sortArray[currentIndex] = temp
    }
    
    
    return sortArray
}


let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
print(insertionSort(list))
print(insertionSort(list, <))
print(insertionSort(list, >))
let strings = [ "b", "a", "d", "c", "e" ]
print(insertionSort(strings, <))

