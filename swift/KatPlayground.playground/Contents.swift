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




//TP
class Personnage {
    
    var pouvoir: String
    
    init (pouvoir: String) { self.pouvoir = pouvoir }
    
    func manger() -> String { return "miam miam \(pouvoir)" }
    
}



class Humain : Personnage {
    
    var sexe: String
    
    init(sexe: String, pouvoir: String) {
        
        self.sexe = sexe
        
        super.init(pouvoir: pouvoir)
        
    }
    
    func Ecrire() -> String { return "Son sexe est \(sexe). Son pouvoir est \(pouvoir)" }
    
}



let p = Humain(sexe: "Féminin", pouvoir: "Magie")

p.Ecrire()

p.manger()























