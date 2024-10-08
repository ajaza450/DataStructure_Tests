//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//Fine numbers of duplicate elements

let array = [2,4,3,3,5,2]

func arrayCount () {
    var temparr = [Int]()
    for arr in array {
        if !temparr.contains(arr) {
            temparr.append(arr)
            let elemets = array.filter({$0 == arr})
            print("Number\(elemets) is times \(elemets.count)")
        }
    }
    
}

arrayCount()



// Using reduce
let occurrences = array.reduce(into: [:], { partialResult, number in
    partialResult[number,default : 0] += 1
})
print("occurrences",occurrences)

for (number, count) in occurrences {
    print("Number \(number) appears \(count) times")
}

////String

let str = "AAABBBCCDD"
var temp = [Character:Int]()

for char in str {
    temp[char, default: 0] += 1

}
print( temp)
for (char ,count) in temp {
    print(char, "=", count)
}



var data = str.reduce(into: [Character: Int]()) { partialResult, char in
    partialResult[char, default: 0] += 1
}
print(data)


// common

func countOccurrences<T: Sequence>(elements: T, isLoop: Bool) -> [T.Element: Int] where T.Element: Hashable {
    var occurrence = [T.Element: Int]()
    if isLoop {
        for element in elements {
               occurrence[element, default: 0] += 1
           }
    }else{
        occurrence = elements.reduce(into: occurrence, { partialResult, element in
            partialResult[element ,default : 0] += 1
        })
    }
    return occurrence
}




let arrayOccurrences = countOccurrences(elements: array, isLoop: false)
print(arrayOccurrences)

let stringOccurrences = countOccurrences(elements: str, isLoop: true)
print(stringOccurrences)
