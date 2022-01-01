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
	//부모와 자식에 display()라는 메서드가 있어서 Student클래스는 display()매서드가 두개임
	// Student 클래스의 인스턴스 lee 가 display()를 호출할 때, 자식클래스가 새로 만든 display()매서드가 우선적으로 호출되려면 func 앞에 ovveride키워드를 씀
	override func display() {
		print("이름 = \(name), 나이 = \(age), 몸무게 = \(weight)")
	}
	init(age : Int, weight : Double, name : String){
		self.name = name
		// super : 부모 메서드 호출 시 사용
		super.init(age: age, weight: weight) //이 줄을 사용안하면 에러발생
	}// error : 'super.init' ins't called on all paths before returning fro initializer
}

var kim : Man = Man(age: 10, weight: 20.5)
kim.display()

var lee : Student = Student(age: 20, weight: 65.2, name: "김영욱")

lee.display()
