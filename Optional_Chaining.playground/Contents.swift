import UIKit


//옵셔널 "값이 있을 수도, 없을 수도 있음"

let optionalConstant: Int? = nil

//let someConstant: Int = nil  // Error : nil' cannot initialize specified type 'Int'

/*	nil 가능성을 문서화 하지 않아도 코드만으로 충분히 표현가능
		문서/주석 작성 시간을 절약
		전달받은 값이 옵셔널이 아니라면 nil체크를 하지 않더라도 안심하고 사용
		효율적인 코딩
		예외 상황을 최소화하는 안전한 코딩														*/

// someOptionalParam can be nil
func someFunction(someOptionalParam: Int?) {
	// ...
}

// someParam must not be nil
func someFunction(somePram: Int) {
	// ...
}

someFunction(someOptionalParam: nil)

//someFunction(somePram: nil) Error : 'nil' is not compatible with expected argument type 'Int'


