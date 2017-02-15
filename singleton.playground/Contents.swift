//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Number {
    var num = 1
    static let shared = Number()
}

Number.shared.num += 1

print(Number.shared.num)

var test = Number.shared.num

print(test)
Number.shared.num += 1
Number.shared.num += 1
test = Number.shared.num
print(test)

class closed {
    func test() {print("hehe\(Number.shared.num)")}
}

var x = closed()
x.test()
