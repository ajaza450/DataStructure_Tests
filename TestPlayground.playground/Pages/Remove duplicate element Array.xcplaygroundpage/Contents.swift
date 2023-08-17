//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


var arr: [Int] = [1,1,2,2,3]

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
var uniqueString = ""

for char in str {
    if !uniqueString.contains(char) {
        uniqueString.append(char)
    }
}
print(uniqueString)

