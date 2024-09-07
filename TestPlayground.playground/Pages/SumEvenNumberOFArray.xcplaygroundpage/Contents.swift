//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: Sum Even numbers of Array using Itration and High Order function Reduse and 



class Signlton{
     static var shared  = Signlton()
    
    private init(){}
    
    func sum (_ array: [Int], complition: @escaping (Int)->Void){
        var temp = 0
//        for number in array{
//            if number % 2 == 0 {
//                temp += number
//            }
//
//        }
        temp = array.reduce(0) { result, number in
            return number % 2 == 0 ? result + number : result
        }
        complition(temp)
    }
    
    
    
}
 

Signlton.shared.sum([1,2,3,4]) { result in
    print(result)
}
