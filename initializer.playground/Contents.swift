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
