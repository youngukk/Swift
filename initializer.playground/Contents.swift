import UIKit

class Man {
	var age : Int
	var weight : Double
	func display() {
		print("나이 = \(age), 몸무게 = \(weight)")
	}
	init(age: Int, weight : Double){
		self.age = age
		self.weight = weight
	} // designated initializer
	convenience init(age: Int){
		self.init(age: age, weight : 3.5)
	} // convenience initializer
}

var kim : Man = Man(age: 10, weight: 20.5)
kim.display()
var lee : Man = Man(age : 1)
lee.display()

class Student : Man {
}

var kim1 : Student = Student(age: 20, weight: 65.2)
kim1.display()
var lee1 : Student = Student(age: 19)
lee1.display()

// 자식 클래스에 designated initializer가 없는 경우
// 자식 클래스에 초기화가 필요한 프로퍼티가 없을 경우

protocol SomeProtocl {
	var x : Int { get set }
	var y : Int { get }
	static var tx : Int { get set}
	static func typeMethod()
	func random() -> Double
}
