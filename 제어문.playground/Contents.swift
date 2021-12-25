import UIKit

for _ in 1...5 {
	print("hello")
}
for i in 1...5 {
	print("\(i)")
}

let names = ["A", "B", "C", "D", "E"]
for name in names {
	print(name)
}

let numberOfLegs = ["spider" : 8, "ant" : 6, "cat" : 4]
//dictionary는 key:value형식의 배열
for (animalName, legCount) in numberOfLegs {
	print("\(animalName)s have \(legCount) legs")
}

for i in 1..<10 {
	if i > 7 {break}
	print(i, terminator: "")
}
print("")
for i in 1...10 {
	if i % 2 == 0 {continue}
	print(i, terminator: "")
}
print("")


var a = 1, b = 2, c = 3, d = 4
if a < b , d > c {
	print("Yes!")
}
// (a < b && d > c)  와 같은의미 (a < b , d > c)

func printName(firstName : String, lastName : String?){
//	if let lName = lastName { //  옵셔널 변수가 값이 있다면 언래핑
//		print(lName,firstName!)
//	}else {
//		print("성을 입력해주세요!")
//	}
	
	guard let lName = lastName else {
		print("성을 입력해주세요")
		return
	}
	print(lName,firstName)
}
 
