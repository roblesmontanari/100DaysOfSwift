/* CHECKPOINT 1:
    Creates a constant holding any temperature in Celsius.
    Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
    Prints the result for the user, showing both the Celsius and Fahrenheit values. */

import Cocoa

let celsius = 21
let fahrenheit = (((celsius) * 9) / 5) + 32

print("Today's temperature is \(celsius) degrees Celsius and \(fahrenheit) degrees Fahrenheit.")
