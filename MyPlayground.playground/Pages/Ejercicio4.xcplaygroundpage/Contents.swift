//: [Previous](@previous)

import Foundation

let ladders: [Int: Int] = [2:10,5:16,9:11,8:17]
let snakes: [Int: Int] = [13:3,18:7,21:19,23:15]
var positionInitial = 0
var positionFinal = 24

while positionInitial < positionFinal{
    var diceRoll = Int.random(in: 1...6)
    print("Te ha salido el numero \(diceRoll)")
    positionInitial += diceRoll
    
    if let ladderPos = ladders[diceRoll]{
        print("Subes por una escalera \(positionInitial), ahora estas en la posicion \(ladderPos)")
        positionInitial = ladderPos
    } else if let snakePos = snakes[diceRoll]{
        print("Bajas por una serpiente\(positionInitial), ahora estas en la posicion \(snakePos)")
        positionInitial = snakePos
    } else{
        print("Avanzaste \(diceRoll) lugares y ahora estas en la posicion \(positionInitial)")
    }
}

print("Llegaste a la meta \(positionFinal), felicidades ganaste")

//: [Next](@next)
