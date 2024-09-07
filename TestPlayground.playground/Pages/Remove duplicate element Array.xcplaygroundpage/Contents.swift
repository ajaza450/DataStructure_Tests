//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: Remove Duplicate elements


var arr: [Int] = [1,1,2,2,3]

// use set when order not matter
let newArr1 = Array(Set(arr))
print(newArr1)


func removeDuplicate(){
    var tem = [Int]()
    
    for num in arr {
        if !tem.contains(num){
            tem.append(num)
        }
    }
    print(tem)
}

removeDuplicate()



var str = "bookkkkss"


// use set when order not matter
var uniqueStringSet = ""
var uniqueCharacters = Array(Set(str))

uniqueStringSet = String(uniqueCharacters)
print(uniqueStringSet)


// when order matter
var uniqueString = ""
for char in str {
    if !uniqueString.contains(char) {
        uniqueString.append(char)
    }
}
print(uniqueString)



func removceDuplicate<T: Sequence>(elements: T, isLoop: Bool) -> Any where T.Element: Hashable {
    var occurrence = [T.Element]()
    if isLoop {
        for element in elements {
            if !occurrence.contains(element){
                occurrence.append(element)
            }
           }
    }else{
        occurrence  = elements.reduce(into: occurrence, { partialResult, newValue in
            if !partialResult.contains(newValue) {
                          partialResult.append(newValue)
                      }
        })
    }
    
    if T.Element.self == Character.self {
           // If the element type is Character (i.e., input is a string), join the characters into a string
           return String(occurrence.map { $0 as! Character })
       }
    return occurrence
}

let uniqueArray = removceDuplicate(elements: arr, isLoop: false)
print(uniqueArray)  // Output: [2, 4, 3, 5]

let stringOccurrences = removceDuplicate(elements: str, isLoop: false)
print(stringOccurrences)  // Output: boks
