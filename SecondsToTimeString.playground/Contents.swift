//: Playground - noun: a place where people can play

import UIKit
import Darwin

func findTimeString(seconds: Double)-> String{
    let str: String = {

       let amount = floor(seconds)
       var minuets = floor(amount / 60)
       let seconds = amount - (minuets * 60)
       var hours = floor(minuets / 60)
       minuets = minuets - (hours * 60)
       let days = floor(hours / 24)
       hours = hours - (days * 24)
       
        
        let dayString = (days == 1 ? "1 day" : "\(Int(days)) days")
        let hourString = (hours == 1 ? "1 hour" : "\(Int(hours)) hours")
        let minuetString = (minuets == 1 ? "1 minuet" : "\(Int(minuets)) minuets")
        let secondString = (seconds == 1 ? "1 second" : "\(Int(seconds)) seconds")
       
       
        let timeString: String = {
           let tempString = "\(dayString), \(hourString), \(minuetString), \(secondString)"
            if(days == 0){
                if(hours == 0){
                    if(minuets == 0){
                        return "\(secondString)"
                    }
                    return "\(minuetString), \(secondString)"
                }
                return "\(hourString), \(minuetString), \(secondString)"
            }
            
           return tempString
        }()
       return timeString;
    }()
    
    return str
}

print(findTimeString(seconds: Double(86400)))
print(Date.timeIntervalSinceReferenceDate)
