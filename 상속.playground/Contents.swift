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
	
}

var kim : Man = Man(age: 10, weight: 20.5)
kim.display()
var lee : Student = Student(age: 20, weight: 60.5)
lee.display()
print(lee.age)
