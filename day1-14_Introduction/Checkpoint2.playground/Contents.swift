/* CHECKPOINT 2:
    Create an array of strings
    Write some code that prints the number of items and the number of unique items in the array
 */

import Cocoa

let friends = ["Mariana", "João", "João", "Carlos", "Felipe"]
print(friends.count)

var friendsList = Set<String>()
friendsList.insert("Mariana")
friendsList.insert("João")
friendsList.insert("João")
friendsList.insert("Carlos")
friendsList.insert("Felipe")
print(friendsList.count)
