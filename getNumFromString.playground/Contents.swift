//: Playground - noun: a place where people can play

import UIKit

var votes = "5 votes"

func voteUp(str: String) -> String {
    let num = Int(String(str[str.characters.startIndex]))! + 1
    return  "\(num) votes"
}

func voteDown(str: String) -> String {
    let num = Int(String(str[str.characters.startIndex]))! - 1
    return  "\(num) votes"
}

voteDown(str: votes)