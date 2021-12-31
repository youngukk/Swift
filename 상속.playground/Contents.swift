import UIKit

class Man {
	var age : Int
	var weight : Double
	func display() {
		print("나이 = \(age), 몸무게 = \(weight)")
	}
	init(age : Int, weight : Double){
		self.age = age
		self.weight = weight
	}
}

class Student : Man {
	var name : String
	func displayS() {
		print("이름 = \(name), 나이 = \(age), 몸무게 = \(weight)")
	}
	init(age : Int, weight : Double, name : String){
		self.name = name
		super.init(age: age, weight: weight)
	}
}

var kim : Man = Man(age: 10, weight: 20.5)
kim.display()

var lee : Student = Student(age: 20, weight: 65.2, name: "김영욱")
lee.displayS()
lee.display
