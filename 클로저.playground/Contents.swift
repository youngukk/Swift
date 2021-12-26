import UIKit

// 클로저 표현식은 독립적인 코드 블록

func exAdd(x : Int, y : Int) -> Int {
	return (x + y)
}

print(exAdd(x: 10, y: 20))

let exAdd1 = {	(x : Int, y : Int) -> Int in
		return (x + y)
}
print(exAdd1(10,20))

// 클로저 표현식은 매개변수를 받거나, 값을 반환하도록 만들 수도 있음
// {(<매개변수 이름> : <매개변수 타입>, ...) -> <반환 타입> in
//		클로저 표현식 코드
// }

// 두 개의 정수 매개변수를 받아서 곱한 값을 반환

let exMultiply = {(val1: Int, val2 : Int) -> Int in
	return val1 * val2
} // 여기서 multiply의 자료형은 (Int, Int) -> Int
var result = exMultiply(10,20) // 상수를 함수처럼 호출 가능
print(result)

// 후행 클로저
// 클로저가 함수의 마지막 argument라면 마지막 매개변수명을 생략한 후 함수 소괄호 외부에 클로저를 생성

func someFun(cl : () -> Void) {
	
}
// trailing closure를 사용 안하면
/* someFun(cl : {
		//closure's body
 }
 */
// trailing closure 사용

someFun {
	//trailing closure's body goes here
}


let multiply = {(val1: Int, val2: Int) -> Int in
	return val1 * val2
}
result = multiply(10, 20)
print(result)

let add = {(val1 : Int, val2 : Int) -> Int in
	return val1 + val2
}
result = add(10, 20)
print(result)

func math(x : Int, y : Int, cal : (Int, Int) -> Int) -> Int {
	return cal(x, y)
}
result = math(x: 10, y: 20, cal: add)
print(result)
result = math(x: 10, y: 20, cal: multiply)
print(result)


result = math(x: 10, y: 20){(val1 : Int, val2 : Int) -> Int in
	return val1 + val2
}// trailing closure
print(result)

result = math(x: 10, y: 20){(val1 : Int, val2 : Int) in // -> Int 생략가능
	return val1 + val2
}

result = math(x: 10, y: 20){ // 매개변수 생략하고 단축인자(shorthand argument name)를 사용
	return $0 + $1
}
print(result)

//클로저에 리턴값이 있으면 마지막 줄을 리턴하므로 return생략 가능
result = math(x: 10, y: 20) { $0 + $1 }

print(result)
