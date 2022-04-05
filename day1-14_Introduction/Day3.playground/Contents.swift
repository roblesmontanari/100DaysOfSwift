// DAY 3: arrays, dictionaires, sets and enums //

import Cocoa

var beatles = ["John", "Paul", "George", "Ringo"]
beatles.append("Adrian")

var numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperatures[2])

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

//var albums = Array<String>()
var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidentes = presidents.reversed()
print(reversedPresidentes)

//

var employee = ["Taylor Swift", "Singer", "Nashville"]

print("Name: \(employee[0])")
print("Job title: \(employee[1])")
print("Location: \(employee[2])")

let employee2 = ["name": "Taylor Swift",
               "job": "Singer",
               "location": "Nashville"]

print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unkown"])

let hasGraduated = ["Eric": false,
                  "Maeve": true,
                  "Otis": false]

let olympics = [2012: "London",
              2016: "Rio de Janeiro",
              2021: "Tokyo"]

print(olympics[2016, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"

//

/*
let actors = Set([
"Denzel Washingron",
"Tom Cruise",
"Nicolas Cage",
"Samuel L Jackson" ])
print(actors)
*/

var actors = Set<String>()
actors.insert("Denzel Washington")
actors.insert("Tom Cruise")
actors.insert("Nicolas Cage")
actors.insert("Samuel L Jackson")
print(actors)

//

/*
var selected = "Monday"
selected = "Tuesday"
selected = "January"
selected = "Friday "
*/

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = .friday

//
