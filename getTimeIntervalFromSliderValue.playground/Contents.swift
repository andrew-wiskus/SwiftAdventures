//: Playground - noun: a place where people can play

import UIKit

//struct SliderInterval {
//    let min_slider: Double!
//    let max_slider: Double!
//    let min_time: Double!
//    let max_time: Double!
//    let interval: Double!
//    let values: [Double]! = {
//        //mintime: 300
//        //maxtime: 3600
//        
//        return [300,600,900,1200]
//    }()
//}

let GT_80 = [64800, 86400, 86400 * 2, 86400 * 3, 86400 * 4, 86400 * 5, 86400 * 6 , 86400 * 7]
let GT_60 = [14400, 18000, 21600, 25200, 28800, 32400, 36000, 39600, 43200]
let GT_30 = [4500,5400,6300,7200,8100,9000,9900,10800]
let GT_0 = [60,120,180,240,300,600,900,1200,1500,1800,2700,3600]

func getTimeIntervalFromSliderValue(sliderValue: Double) -> Double{
    let val = Double(80)
    
    if sliderValue >= 80 {
        for (i,_) in GT_80.enumerated() {
            if(sliderValue > (80 + (Double(GT_80.count - i) * (20.0 / Double(GT_80.count))))){
                return Double(GT_80[GT_80.count - i])
            }
        }
       return Double(GT_80[0])
    }
    if sliderValue >= 60 {
        for (i,_) in GT_60.enumerated() {
            if(sliderValue > (60 + (Double(GT_80.count - i) * (20.0 / Double(GT_60.count))))){
                return Double(GT_60[GT_60.count - i])
            }
        }
        return Double(GT_60[0])
    }
    if sliderValue >= 30 {
        for (i,_) in GT_30.enumerated() {
            if(sliderValue > (30 + (Double(GT_30.count - i) * (30.0 / Double(GT_30.count))))){
                return Double(GT_30[GT_30.count - i])
            }
        }
        return Double(GT_30[0])
    }
    if sliderValue >= 0 {
        for (i,_) in GT_0.enumerated() {
            if(sliderValue > (0 + (Double(GT_0.count - i) * (30.0 / Double(GT_0.count))))){
                return Double(GT_0[GT_0.count - i])
            }
        }
        return Double(GT_0[0])
    }
    
    return val
}

43200 * 2 //+ 43200

getTimeIntervalFromSliderValue(sliderValue: 12.0)
