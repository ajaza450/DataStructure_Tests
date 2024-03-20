//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/**
 
 Input: “abcdabce”
 Output: d
 Explanation: As ‘d’ is first character in the string which does not repeat.
  
 
 */


func firstNonRepeatingCharacter(_ str: String) -> Character? {
    var charCount = [Character: Int]() // Dictionary to store character count
    var nonRepeatingChars = [Character]() // Array to store non-repeating characters in order
    
    // Iterate through the string characters
    for char in str {
        // Update character count in dictionary
        charCount[char, default: 0] += 1
        
        // Check if the current character is non-repeating
        if charCount[char] == 1 {
            nonRepeatingChars.append(char) // Add non-repeating character to the array
        } else {
            // If the character was previously non-repeating, remove it from the array
            if let index = nonRepeatingChars.firstIndex(of: char) {
                nonRepeatingChars.remove(at: index)
            }
        }
    }
    
    // The first element in the array is the first non-repeating character
    return nonRepeatingChars.first
}

// Example usage
let inputString = "abcdabce"
if let result = firstNonRepeatingCharacter(inputString) {
    print("First non-repeating character:", result)
} else {
    print("No non-repeating character found.")
}
