/* CHECKPOINT 9:
 
    Write a function that accepts an optional array of integers, and returns one randomly.
    If the array is missing or empty, return a random number in the range 1 through 100.
 
*/

import Cocoa

func getNumber(in array: [Int?]?) -> Int {
    lazy var random = Int.random(in: 1...100)
    return (array?.randomElement() ?? random) ?? random
}
