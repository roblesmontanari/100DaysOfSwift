// DAY 12: classes, inheritance, and checkpoint 7 //

import Cocoa

// how to create your own classes

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10
