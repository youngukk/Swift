//: [Previous](@previous)

import Swift

/*
	옵셔널이란?
	값이 있을 수도, 없을 수도 있음을 표현
	nil이 할당 될수 있는지 없는지 표현
*/

// someOptionalParm에 nil이 할당 될 수 있다.
func someFunction(someOptionalParam: Int?) {
			 // ....
}

/// someOptionalParm에 nil이 할당 될 수 없다.
func someFunction(someOptionalParam: Int) {
			 // ....
}

someFunction(someOptionalParam: nil)
// someFunction(someParam: nil)

/*
	옵셔널을 쓰는 이유
	명시적 표현	  nil의 가능성을 코드만으로 표현가능
						문서/주석 작성 시간 절약
	안전한 상용  전달받은 값이 옵셔널이 아니라면 nil체크를 하지 않 사용가능
						예외 상황을 최소화 하는 안전한 코딩
						효율적 코딩
*/

/*
	옵셔널 문법과 선언
	옵셔널 문법 = enum + generics
*/

/*
	옵셔널 선언
	enum Optional<Wrapped>: ExpressibleByNiliteral {
			case none
			case some(Wrapped)
	}

	let optionalValue: Optional<Int> = nil
	let optionalValue: Int? =nil
*/
 
// 옵셔널 표현 !를 이용한 암시적 추출 옵셔널
// Implicitly Unwrapped Optional
var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case .none:
		print("This Optional variable is nil")
case .some(let value):
		print("Value is \(value)")
}

// 기존 변수처럼 사용 가능
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

// nil 할당 가능
implicitlyUnwrappedOptionalValue = nil

// 잘못된 접근으로 인한 런타임 오류 발생
//implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

// 물음표(?)를 이용한 옵셔널
// Optional
var optionalValue: Int? = 100

switch optionalValue {
case .none:
		print("This Optional variable is nil")
case .some(let value):
		print("Value is \(value)")
}

// nil 할당 가능
optionalValue = nil

// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가
//optionalValue = optionalValue + 1


//: [Next](@next)
