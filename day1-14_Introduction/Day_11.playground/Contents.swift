// DAY 11: access control, static properties and methods, and checkpoint 6  //

import Cocoa

// how to limit access to internal data using access control:

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount:100)

let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

/*
 
private = don't let anything outside the struct use this.
fileprivate = don't let anything outside the current file use this
public = let anyone, anywhere use this
 
private(set) = let anyone read this property, but only internal methods write it
 
 */

// static properties and methods:

struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) jointed the school.")
        studentCount += 1
    }
}

School.add(student: "Travis")
print(School.studentCount)

/*
 
 self = the current value of a struct     ex: 55, "Hello", true
 Self = the current type of struct        ex: Int, String, Bool
 
*/

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "cfederighi", password: "h4irf0rce0ne")
}

//
