/* CHECKPOINT 4:
    Write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number.
    
    That sounds easy, but there are some catches:

         You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
         If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
         You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
         If you can’t find the square root, throw a “no root” error.
 */

import Cocoa

enum RootError: Error {
    case tooLow, tooHigh, notFound
}

func squareRoot(of number: Int) throws -> Int {
    if number < 1 {
        throw RootError.tooLow
    }

    if number > 10_000 {
        throw RootError.tooHigh
    }

    for i in 1...100 {
        if i * i == number {
            return i
        }
    }

    throw RootError.notFound
}

let number = 484

do {
    let root = try squareRoot(of: number)
    print("The square root of \(number) is \(root)")
} catch RootError.tooLow{
    print("Sorry, \(number) is too low - please specify a number from 1 through 10.000.")
} catch RootError.tooHigh{
    print("Sorry, \(number) is too high - please specify a number from 1 through 10.000.")
} catch RootError.notFound{
    print("Sorry, we could not find an integer square root for \(number).")
} catch {
    print("Sorry, there was a problem.")
}
