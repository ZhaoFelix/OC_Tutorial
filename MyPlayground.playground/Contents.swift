//: Playground - noun: a place where people can play

import Foundation

let carAge:[Double] = [10,8,3,3,2,1]
let carPrice:[Double] = [500,400,7000,8500,11000,10500]
var intercept = 0.0//截距
var slope = 0.0 //斜率
func predicatePrice(_ carAge:Double) -> Double {
    return slope*carAge+intercept
}

//搭建模型
let numOfCarAdvertWeSaw = carPrice.count
let numOfInteration = 10000 //训练次数
let alpha = 0.0001

for _ in 1...numOfInteration {
    for i in 0..<numOfCarAdvertWeSaw {
        let difference = carPrice[i] - predicatePrice(carAge[i])
        intercept += alpha*difference
        slope += alpha*difference*carAge[i]
    }
}

print(predicatePrice(4))

