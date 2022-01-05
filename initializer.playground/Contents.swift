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

struct FixedLengthRange {
		var firstValue: Int
		let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
// the range represents integer values 0, 1, and 2
rangeOfThreeItems.firstValue = 6
// the range now represents integer values 6, 7, and 8

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
// this range represents integer values 0, 1, 2, and 3
rangeOfFourItems.firstValue = 6
// this will report an error, even though firstValue is a variable property

class DataImporter {
		/*
		DataImporter is a class to import data from an external file.
		The class is assumed to take a nontrivial amount of time to initialize.
		*/
		var filename = "data.txt"
		// the DataImporter class would provide data importing functionality here
}

class DataManager {
		lazy var importer = DataImporter()
		var data: [String] = []
		// the DataManager class would provide data management functionality here
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
// the DataImporter instance for the importer property hasn't yet been created
