import UIKit

var numbers: Array<Int> = Array<Int>()

numbers.append(1)
numbers.append(2)
numbers.append(3)

numbers[0]

numbers.insert(4, at: 2)
numbers

numbers.remove(at: 0)
numbers

var names = [String]()
var names2 : [String] = []

//var dic: Dictionary<String, Int> = Dictionary<String, Int>()
var dic: [String : Int] = ["김영욱": 1]
dic["철수"] = 3
dic["김민지"] = 5
dic

dic["김민지"] = 6
dic

dic.removeValue(forKey: "김민지")
dic

var set: Set = Set<Int>()

set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set.insert(30)
set

set.remove(20)
set
