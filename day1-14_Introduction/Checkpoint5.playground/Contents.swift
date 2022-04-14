/* CHECKPOINT 5:
 
 Your input is this:
    let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
 
 Your job is to:

     Filter out any numbers that are even
     Sort the array in ascending order
     Map them to strings in the format “7 is a lucky number”
     Print the resulting array, one item per line
 
 So, your output should be as follows:

 7 is a lucky number
 15 is a lucky number
 21 is a lucky number
 31 is a lucky number
 33 is a lucky number
 49 is a lucky number
 
 */

import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

func isOdd(number: Int) -> Bool {
    number.isMultiple(of: 2) == false
}

func luckyString(_ number: Int) -> String {
    "\(number) is a lucky number."
}

func printValue(_ string: String) {
    print(string)
}

luckyNumbers.filter(isOdd).sorted().map(luckyString).forEach(printValue)
