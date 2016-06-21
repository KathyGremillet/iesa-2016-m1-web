//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



//CREER UNE CLASSE
class Shape {
    var sidesCount = 0
    func getInfo() -> String {
        return "A shape with /(sidesCount) sides."
    }
}

//CREER UNE INSTANCE
var shape = Shape()
shape.sidesCount = 7
var shapeDescription = shape.getInfo()

//CONSTRUCTEUR
class NamedShape {
    var sidesCount: Int = 0
    var name: String
    init(name: String) { self.name = name }
    func getInfo() -> String { return "\(sidesCount) sides" }
}
    var carre = NamedShape(name:"drapeau")



//HERITAGE / SOUS-CLASSE
class Square : NamedShape {
    var sideLength: Double
    init(length: Double, name: String) {
        self.sideLength = length
        super.init(name: name)
        sidesCount = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    override func getInfo() -> String {
        return "Square: L=\(sideLength)."
    }
}

let s = Square(length: 5.2, name: "MyS")
s.area()
s.getInfo()




//
//class Person {
//    var name: String
//    init (name: String) { self.name = name }
//    func getName() -> String { return "His/her name is: \(name) ." }
//    func setName(name: String) -> String {
//        self.name = name
//        return "His/her name is: \(name) ."
//    }
//}
//let n = Person(name:"Pat")



//ACCESSEURS

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    init (length: Double, name: String) {
        self.sideLength = length
        super.init(name: name)
        sidesCount = 3
    }
    var perimeter: Double {
        get{
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    override func getInfo() -> String {
        return "Length= \(sideLength)"
    }
}
var triangle = EquilateralTriangle (length: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)



class Age {
    var age: Int = 0
    init (age: Int) { self.age = age }
    var perimeterAge: Int {
        get{
            return age
        }
        set {
            age = newValue
        }
    }
    func getAge() -> String {
        return "Age = \(age)"
    }
}
var a = Age (age: 15)
print(a.perimeterAge)


//PARAMETRES NOMMES
class Counter {
    var count: Int = 0
    func incrementBy (amount: Int, numberOfTimes times: Int) {
        count += amount * times
    }
    
}
var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)



//ENUM & RAWVALUE
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func getInfo() -> String {
        switch self {
            case .Ace: return "ace"
            case .Jack: return "jack"
            case .Queen: return "queen"
            case .King: return "king"
            default: return
            String(self.rawValue)
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue



//STRUCTURE
enum Suit: String {
    case Hearts
    case Spades
    case Clubs
    case Diamonds
    func getInfo() ->String {
        switch self {
            case .Hearts: return "hearts"
            case .Spades: return "spades"
            case .Clubs: return "clubs"
            default: return "diamonds"
        }
    }
}
//struct Card {
//    var rank: Rank
//    var suit: Suit
//    func simpleDescription() -> String {
//        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
//    }
//}
//let threeOfSpades = Card(rank: .Three, suit: .Spades)
//let threeOfSpadesDescription = threeOfSpades.simpleDescription()


//PROTOCOL & EXTENSION

//protocol Personnage {
//    func deplacer()
//}
//class Humain: Personnage {
//    func deplacer() ->String { return "Se déplace en marchant" }
//}
//class Limace: Personnage {
//    func deplacer() ->String { return "Se déplace en rampant" }
//}




//ACCESS CONTROL

class Book {
    var author: String = "Author"
    var title: String = "Title"
    private func getDescription() ->String {
        return "\(author) - \(title)"
    }
}
var b = Book()
b.author = "George RR Martin"
b.title = "Game of Thrones"
print(b.getDescription())




































