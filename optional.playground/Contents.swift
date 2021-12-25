import UIKit

var y : Int? = 10
var z : Int! = 10
var a : Int?
var b : Int?

print(Int("100")!)
//print(Int("hi"))

var x : Int?
x = 10
//print(x)
print(x!)

if x! != 0{
	print("17번째줄 값 : \(x!)")
}

if x != nil{
	print("21번째줄 값 : \(x!)")
}

if let xx = x { // 옵셔널 변수 x가 값(10)이 있으므로 언래핑해서 일반 상수 xx에 대입하고 if문 실행
	print(xx)
} else {
	print("nil")
}

var x1 : Int?
// 옵셔널 변수 x1이 값이 없어서 if문의 조건이 거짓이 되어 if문 실행하지 않고 else로 감
if let xx = x1 {
	print(xx)
} else {
	print("nil")
}


var pet1: String?
var pet2: String?
pet1 = "cat"
pet2 = "dog"
if let firstPet = pet1, let secondPet = pet2 {
	print(firstPet, secondPet)
} else {
	print("nil")
}

let q : Int? = 1
let w : Int = q!
let e = q
//print(q,w,e)
print(type(of: q),type(of: w),type(of: e))

/* <!> 일반 옵셔널 값으로 사용하려고 하지만, 옵셔널로 사용할 수 없는 경우 스위프트는 값을 강제로 푼다  */
/* 옵셔널이 항상 유효한 값을 가질 경우 옵셔널이 암묵적인 언래핑이 되도록 선언할 수도 있다. */
/* 옵셔널로 사용되지 않으면 자동으로 unwrap한다 	*/


let a1 : Int! = 1
let b1 : Int = a1 // 옵셔널로 사용되지 않으면 자동으로 unwrap함
let c1 : Int = a1!
let d1 = a1				// 옵셔널로 사용될 수 있으므로 옵셔널형으로 간주
let e1 = a1 + 1
//print(a1,b1,c1,d1,e1) = <Optional(1) 1 1 Optional(1) 2>
print(type(of: a1),type(of: b1),type(of: c1),type(of: d1),type(of: e1))

class MyAge {
	var age : Int!
	init(age: Int) {
		self.age = age
	}
	func printAge() {
//  print(age)  => Optional(1)
		print(age + 1) // 2, age! + 1 이라고 쓰지 않아도 됨
		let age1 :  Int = age
		print(age1)
		let age2 = age + 2
		print(age2)
	}
}

var han = MyAge(age:1)
han.printAge()

let myConstant : String? = nil
//let myConstant : String = nil //Error

var x2 : Int? = 20
var y2 : Int? = Optional.some(10)
var z2 : Int? = Optional.none
var x3 : Optional<Int> = 30
//print(x2, y2, z2, x3)
//Optional(20) Optional(10) nil Optional(30)

var f : Any = "hi"
print(f, type(of: f))
f = 10
print(f, type(of: f))
f = 3.5
print(f, type(of: f))
