/* CHECKPOINT 6:
 
    Create a struct to store information about a car.
     Include:
         -> Model
         -> Number of seats
         -> Current gear
     . Add a method to change gears up or down
     . Have a think about variables and access control
     . Don't allow invalid gears - 1...10 seems a fair maximum range
 */

import Cocoa

struct Car {
    let model: String
    let seats: Int
    let maxGears: Int
    private(set) var gear = 1
    
    mutating func changeGear(difference: Int) {
       let newGear = gear + difference

        if newGear >= 1 && newGear <= 10 {
            gear = newGear
        }
    }
}

var car = Car(model: "McLaren 720s", seats: 5, maxGears: 9)
print(car)

car.changeGear(difference: 7)
print(car.gear)
