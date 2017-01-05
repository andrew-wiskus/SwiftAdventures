//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let userDefaults = Foundation.UserDefaults.standard
userDefaults.set(str, forKey: "hello_world")
userDefaults.synchronize()

var testing = userDefaults.value(forKey: "hello_world")
