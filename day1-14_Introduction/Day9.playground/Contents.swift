// DAY 9: closures, passing functions into functions, and checkpoint 5 //

import Cocoa

func greetUser() {
    print("Hi there!")
}

var greetCopy: () -> Void = greetUser
greetCopy()

let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

sayHello("Taylor")

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})

print(captainFirstTeam)

//

let friends = ["Robles", "Mariana", "Carlos", "João", "Rui"]

let sortedFriends = friends.sorted {
    if $0 == "Robles" {
        return true
    } else if $1 == "Robles" {
        return false
    }
    return $0 < $1
}

print(sortedFriends)

let reverseFriends = friends.sorted { $0 > $1 }
print(reverseFriends)

let rOnly = friends.filter { $0.hasPrefix("R") }
print(rOnly)

let uppercaseFriends = friends.map { $0.uppercased() }
print (uppercaseFriends)

//
