/* CHECKPOINT 8:
 
 Your challenge is this:
     Make a protocol that describes a building, adding various properties and methods,
     then create two structs, House and Office, that conform to it.
 
Your protocol should require the following:
     A property storing how many rooms it has.
     A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
     A property storing the name of the estate agent responsible for selling the building.
     A method for printing the sales summary of the building, describing what it is along with its other properties.
 
*/

import Cocoa

protocol Building {
    var type: String { get }
    var rooms: Int { get }
    var cost: Int { get set }
    var agent: String { get set }
    func printSummary()
}

extension Building {
    func printSummary() {
        print("Talk to \(agent) to buy this \(type) for $\(cost)")
    }
}

struct House: Building {
    let type = "house"
    var rooms: Int
    var cost: Int
    var agent: String
}

struct Office: Building {
    let type = "office"
    var rooms: Int
    var cost: Int
    var agent: String
}

let examapleHouse = House(rooms: 4, cost: 500_000, agent: "Swift & Co")
examapleHouse.printSummary()

let exampleOffice = Office(rooms: 30, cost: 12_000_000, agent: "Taytay Inc")
exampleOffice.printSummary()
