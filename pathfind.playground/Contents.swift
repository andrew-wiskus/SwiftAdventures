//: Playground - noun: a place where people can play

import UIKit

struct XY {
    var x: Int
    var y: Int
}

struct GameState {
    var pos: XY
    var map: [[Int]]
}

struct MoveSet {
    var index: Int
    var state: GameState
}

let level1 = [
    [0,1,1,0],
    [0,1,0],
    [0,1,1,0]
]

func checkLogic(gameMap: [[Int]], current: (x: Int, y:Int), next: (x: Int, y:Int)) -> BooleanLiteralType{
    
    let currentX = current.x
    let currentY = current.y
    let nextX = next.x
    let nextY = next.y
    
    if(gameMap[nextY - 1][nextX - 1] == 0){
        return false
    }
    
    //TODO: CHECK IF NEXT X / NEXT Y IS OFF GAME MAP
    
    //first tap
    if currentX == 0 && currentY == 0 { return true }
    
    //if tapped on same row
    if currentY == nextY && (currentX == nextX + 1 || currentX == nextX - 1) { return true }
    
    //check odd row
    if currentY % 2 != 0 {
        
        //tapped up
        if currentY == nextY - 1 && (currentX == nextX || currentX == nextX - 1) { return true }
        //tapped down
        if currentY == nextY + 1 && (currentX == nextX || currentX == nextX - 1) { return true }
        
    }
    
    //check even row
    if currentY % 2 == 0 {
        
        //taped up
        if currentY == nextY - 1 && (currentX == nextX || currentX == nextX + 1) { return true }
        //tapped down
        if currentY == nextY + 1 && (currentX == nextX || currentX == nextX + 1) { return true }
        
    }
    
    return false
}

func findPossibleMoves(for state: GameState) -> [XY] {
    
    var possibleMoves = [XY]()
    
    for y in 1...state.map.count {
        
        for x in 1...state.map[y - 1].count {
            let logicCheck = checkLogic(
                gameMap: state.map,
                current: (x: state.pos.x, y: state.pos.y),
                next: (x: x, y: y)
                )
            
            if logicCheck {
                var newMapState = state.map
                newMapState[y - 1][x - 1] -= 1
                possibleMoves.append(XY(x: x, y: y))
            }
        }
    }
    
    return possibleMoves
}

var moveList = [(index: Int, move: XY)]()
var tapsToWin = 0
for i in level1.flatMap({$0}) {
    tapsToWin += i
}

func buildMoveList(from moves: [XY], using map: [[Int]]) -> [XY]? {
    
    var mapState = map
    
    
    for (index, move) in moves.enumerated() {
        
        if index != 0 {
        mapState[move.y - 1][move.x - 1] += -1
        }
    }
    
    let possibleNextMoves = findPossibleMoves(for: GameState(pos: moves[moves.count - 1], map: mapState))
    
    if (possibleNextMoves.count == 0) {
        print("you lose")
        return nil
    }
    
    for nextMove in possibleNextMoves {
        var next = moves
        next.append(nextMove)
        if next.count == tapsToWin - 1{
            print("you win!")
            return nil
        } else {
        
        buildMoveList(from: next, using: map)
        }
    }
    
    return moves
}

buildMoveList(from: [XY(x: 0, y:0 )], using: level1)


//________1,1_________
//----1,2-----2,1-----
//-2,2---2,3-

