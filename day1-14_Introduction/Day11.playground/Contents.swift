// DAY 11: access control, static properties and methods, and checkpoint 6  //

import Cocoa

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

//
