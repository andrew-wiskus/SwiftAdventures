//: Playground - noun: a place where people can play

import UIKit

var intArray = [1,2,3,4,5,6,7,8,9,10]
var strArray = ["a","b","c","d","e"]

let squaresPlusNum = intArray.map {value -> Int in
    var number = 123
    return value * value + number
}

let onlyEvens = intArray.filter {value in
    var number = 123
    return value % 2 == 0
}
print("Squared + Num: \(squaresPlusNum)")
print("Filtered for Evens: \(onlyEvens)")


let taskNames = ["first", "second", "all", "unique", "taskStrings"]

func removeTask(item: String, from: [String]) -> [String] {
    let filteredArray = from.filter({value in
    return value != item
    })
    return filteredArray
}

let newArray = removeTask(item: "second", from: taskNames)