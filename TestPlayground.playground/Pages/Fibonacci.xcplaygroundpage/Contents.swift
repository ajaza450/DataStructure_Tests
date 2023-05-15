//: [Previous](@previous)

import Foundation


// Algorithm #005: In this series, the next value is the sum of previous two values. Also, the first two valueus are followed by 0 and 1.

/**
 
 We can find the Fibonacci series using any of the following methods −

 Iterative method

 Recursion method
 
 */

// 1. Iterative method

func fibonacciUptoSteps(steps: Int) -> [Int]{
    
    if steps < 1 {return []}
    if steps == 1 {return [0]}
    if steps == 2 {return [0,1]}
    
    var sequence = [0,1]
    for _ in 0...steps - 2 {
        let first = sequence[sequence.count - 2]
        let second =  sequence.last!
        sequence.append(first + second)
        
    }
    
    return sequence
}


print("For 0 steps -> ", fibonacciUptoSteps(steps: 0))
print("For negative steps -> ", fibonacciUptoSteps(steps: -5))
print("For N steps -> ", fibonacciUptoSteps(steps: 10))



// 2. Recursion method




func fibonacciUsingRecursion( steps: Int, first:Int, second:Int) -> [Int]{
    if steps == 0 {
        return []
    }
    
    return [first + second] + fibonacciUsingRecursion(steps: steps - 1, first: second, second: first + second)
}


print("Fibonacci using recursion -> ", [0, 1] + fibonacciUsingRecursion(steps: 10, first: 0, second: 1))




func fibonacciSeries(num: Int) -> Int{

   // Checking number for num 0 and 1
   // Or we can say it is the base condition for recursive
   // function
   if (num == 0){
      return 0
   }
   else if (num == 1){
      return 1
   }
   // To find the with number we add the previous two numbers
   // Here we find the previous two numbers by calling the function itself and return the result.
    
   // print(fibonacciSeries(num: num - 1), fibonacciSeries(num: num -  2))
   return fibonacciSeries(num: num - 1) + fibonacciSeries(num: num -  2)
}


var val = 5
print("Following is the Fibonacci series:")

// Iterate for every number stating from 0 to val
for j in 0...val{
   let output = fibonacciSeries(num: j)
   print(output)
} 
