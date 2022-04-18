/* CHECKPOINT 7:
 
 Your challenge is:
     Make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses,
     then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.
 
 But there’s more:
     The Animal class should have a legs integer property that tracks how many legs the animal has.
     The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
     The Cat class should have a matching speak() method, again with each subclass printing something different.
     The Cat class should have an isTame Boolean property, provided using an initializer.
 
 */

import Cocoa

class Animal {
    let legs: Int

    init(legs: Int) {
        self.legs = legs
    }

    func speak() {
        assertionFailure("This should never be called.")
    }
}

class Dog: Animal {
    override func speak() {
        print("Woof!")
    }
}

final class Corgi: Dog {
    override func speak() {
        print("Bark!")
    }
}

final class Poddle: Dog {
    override func speak() {
        print("Yip!")
    }
}

class Cat: Animal {
    let isTame: Bool

    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }

    override func speak() {
        print("Meow!")
    }
}

class Persian: Cat {
    override func speak() {
        print("Purr!")
    }
}

class Lion: Cat {
    override func speak() {
        print("Roar!")
    }
}
