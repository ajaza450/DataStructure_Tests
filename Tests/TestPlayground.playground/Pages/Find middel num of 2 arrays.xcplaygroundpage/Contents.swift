//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/**
 nput: nums1 = [1,2], nums2 = [3,4]
 Output: 2.50000
 Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
 
 */

func midel(arr1: [Int], arr2:[Int]){
    var marged_arr = (arr1 + arr2).sorted()
    print(marged_arr)
//
//    for _ in 0...(marged_arr.count - 1) {
//        for j in 1...(marged_arr.count - 1) {
//            if marged_arr[j - 1] > marged_arr[j] {
//                let temp = marged_arr[j - 1]
//                marged_arr[j - 1] = marged_arr[j]
//                marged_arr[j]  = temp
//            }
//        }
//    }
    
    print("marged_arr sorted", marged_arr)
    if marged_arr.count % 2 == 0 {
      
        let mid1  = marged_arr.count / 2
        let first = marged_arr[mid1-1]
        print(first)
        let second = marged_arr[mid1]
        print(second)
        let re = Double((first + second))
        let r1 = re / 2
        print(r1)
        
    }else{
        //
        let mid = marged_arr.count + 1
        let mid_element = marged_arr[ mid / 2]
        
        print(mid_element)
        
    }
}



print(midel(arr1: [1,2],arr2: [3,4]))


func findMedianSortedArrays(nums1: [Int], nums2: [Int]) -> Double {
    var mergedArr = (nums1 + nums2).sorted()
    print("count",mergedArr.count/2)
    print("mergedArr sorted", mergedArr)
    if mergedArr.count % 2 == 0 {
        let mid1 = mergedArr.count / 2 - 1
        let mid2 = mid1 + 1
        return Double(mergedArr[mid1] + mergedArr[mid2]) / 2.0
    } else {
        let mid = mergedArr.count / 2
        return Double(mergedArr[mid])
    }
}

let result = findMedianSortedArrays(nums1: [1, 2,], nums2: [3, 4])
print("Result:", result)
