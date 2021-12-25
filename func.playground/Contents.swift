import UIKit
import Foundation

func sayHello() {
	print("hello")
}

sayHello()


// 외부 매개변수명을 생략하면 내부 매개변수명이 외부 매개변수명까지 결합
func add(x : Int, y : Int) ->Int {
	print(#function)
	return(x + y)
}

print(add(x: 1, y: 2))

// (fitst, second)은 외부 매개변수명을 호출할때 사용되며 내부 매개변수명(x, y) 함수 내부에서 사용
func add(first x : Int, second y : Int) -> Int {
	print(#function)
	return(x + y)
}

print(add(first: 3, second: 4))

// 외부매개변수명 생략한다는 의미로 다른 언어처럼 호출이 가능하지만 추천하지는 않음
func add(_ x: Int, _ y : Int) -> Int {
	print(#function)
	return(x + y)
}

print(add(5, 6))

// 첫번째 외부 매개변수명만 생략하는 경우가 많음 오브젝트c언어의 호출 방식이 이러함
// 두번째 매개변수부터는 외부매개변수 사용 제일 많이 사용하는 방법
func add(_ x : Int, with y : Int) -> Int {
	print(#function)
	return(x + y)
}

print(add(7, with: 8))






//디폴트값을 정할수 있음  name이라는 parameter에 "길동"이라는 디폴트 값을 할당
func sayHelloName(count : Int, name : String = "길동") -> String {
	return ("\(name), 너의 번호는 \(count)")
}

var message = sayHelloName(count: 100)
print(message)
message = sayHelloName(count: 10, name: "소프트")
print(message)

//함수로부터 여러개의 결과를 반환할때 튜플로 활용 가능
func converter(length : Float) -> (yards : Float, centimeters : Float, meters : Float){
	let yards = length * 0.0277778
	let	centimeters = length * 2.54
	let meters = length * 0.0254
	return(yards, centimeters, meters)
}

var lengthTuple = converter(length: 20)
print(lengthTuple.yards)
print(lengthTuple.centimeters)
print(lengthTuple.meters)

func sss(x : Int, y : Int) -> (sum : Int, sub: Int, div : Double){
	let sum = x + y
	let sub = x - y
	let div = Double(x) / Double(y) // 같은 자료형만 연산 가능
	return(sum, sub, div)
}

var result = sss(x: 10, y: 3)
print(result.sum)
print(result.sub)
//원하는 소수점까지 사용하는 방법
print(String(format : "%.3f", result.div))

//가변 매개변수
//함수가 지정된 데이터 타입으로 0개 또는 그 이상의 매개변수를 받는다는 것을 가리키기 위해서 세 개의 점을 이용하여 선언
// 지정되지 않은 개수의 String 값을 매개변수로 받아서 콘솔에 출력

func displayStrings(strings: String...){
	for string in strings {
		print(string, terminator: " ")
	}
	print()
}

displayStrings(strings: "일", "이", "삼", "사")
displayStrings(strings: "1", "2", "3", "4")

func randomSum(num : Int...){
	var score = 0
	for sum in num {
		score += sum
	}
	print(score)
}

randomSum(num: 1,2,3,2,5,1,5)
