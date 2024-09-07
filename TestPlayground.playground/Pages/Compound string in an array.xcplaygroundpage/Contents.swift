//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/**
 
 Find Compound string in an array
 [star, fish, starfish, car, lightcar]

 Returns 1

 [star, fish, starfish, light, car, lightcar]

 Returns 2
 
 */



func compount(arr: [String])-> Int{
   var count = 0
    for string in arr {
        
        for item in arr {
            if string != item, string.hasSuffix(item) || string.hasPrefix(item)  {
                let suffix = String(string.dropFirst(item.count))
                let prefix = String(string.dropLast(item.count))
                if arr.contains(suffix) ||  arr.contains(prefix) {
                    print(suffix,"prefix",prefix,"item",item,string)
                    count += 1
                    break
                    
                }
            }
        }
        
    }
    return count
    
}

print(compount(arr: ["star", "fish", "starfish", "light", "lightcar"]))



func compound(arr: [String]) -> Int {
    var count = 0
    let set = Set(arr)
    print(set)
    for string in arr {
        for item in arr where string != item {
            if set.contains(String(string.dropFirst(item.count))) || set.contains(String(string.dropLast(item.count))) {
                count += 1
                break
            }
        }
    }
    return count
}

print(compound(arr: ["star", "fish", "starfish", "light","car", "lightcar"]))
