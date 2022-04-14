// DAY 10: structs, computed properties, and property observers //

import Cocoa

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let lod = Album(title: "Life of a DON", artist: "Don Toliver", year: 2021)
let wlr = Album(title: "Whole Lotta Red", artist: "Playboi Carti", year: 2020)

print(lod.title)
print(wlr.artist)

lod.printSummary()
wlr.printSummary()

struct Employee {
    let name: String
    var vacationRemaining = 14
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

let kane = Employee(name: "Lana Kane")
let poover = Employee(name: "Pam Poovey", vacationRemaining: 35)

//
