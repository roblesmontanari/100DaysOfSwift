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

struct Employee1 {
    let name1: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining1: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var john = Employee1(name1: "John Doe", vacationAllocated: 14)
john.vacationTaken += 4
john.vacationRemaining1 = 5
print(john.vacationAllocated)

//

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old values was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

//

struct Player {
    let pName: String
    let pNumber: Int
    
    init(pName: String) {
        self.pName = pName
        pNumber = Int.random(in: 1...99)
    }
}

let player = Player(pName: "Neymar Jr.")
print(player.pNumber)

//
