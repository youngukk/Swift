import UIKit
import CoreFoundation

var x : Int = 10
print(x)

print(type(of: x)) // 변수의 자료형 확인
let s = MemoryLayout.size(ofValue: x)
let t = MemoryLayout<Int>.size
print(s, t)

print(1,2,3,4,5, separator: " ... ")
print(1,2,3,4,5)

for n in 1...5{
	print(n)
}

for n in 1...5{
	print(n, terminator: "")
}

print()// \n

for n in 1...5{
	print(n, terminator: " ")
}

var welcomeMessage: String	//초깃값이 없으므로 자료형을 직접 표기함

let meaningOfLife = 42	//meaningOfLife int형으로 타입 추론이 가능함
let pi = 3.141592				//pi는 double형으로 추론됨 (소수점은 기본적으로 double로 추론)
let anotherPi = 3 + 0.141592 //anotherPisms double형으로 추론됨
print("\n", type(of: anotherPi), separator: "")
//int형은 8비트 16비트 32비트 64비트 정수를 지원
//Int8 Int16 Int32 Int64
//UInt8 UInt16 UInt32 UInt64

// 출력하고 싶은 변수나 상수가 있을경우
print(x); print("x") // 한 줄에 코드를 사용하고싶은경우 ;를 사용
print("\(x)")
print("값은 \(x)입니다.")
print("Int32 Min = \(Int32.min) Int32 Max = \(Int32.max)")

// double(64bit) : 소수점 15자리 정확도 float(32bit) : 소수점 6자리 정확도

//var orangesAreOrange : Bool
//var orangesAreOrange : Bool = true
var orangesAreOrange = true // 초깃값 ture가 있으므로 : Bool은 일반적으로 생략함

print(MemoryLayout.size(ofValue: orangesAreOrange))

/* 문자 데이터 타임 : character
	 문자, 숫자, 문장 부호, 심볼 같은 유니코드문자 하나를 저장
	 주의 : 초깃값은 작은 따옴표가 아니고 큰 따옴표 */

var myChar1 : Character
var myChar2 : Character = ":"
var myChar3 : Character = "X" // character 생략 불가, 생략하면 string형

var myChar4 = "\u{0253B}"

var userName : String = "kim" // : String 생략 가능
var age = 20
var message = "\(userName)의 나이는 \(age)입니다."
print(message)

/*
 특수문자  이스케이프 시퀀스
 \n - 개행
 \r - 캐리지 리턴
 \t	- 수평 탭
 \\ - 역슬래시
 \" - 큰따옴표
 \' - 작은따옴표
 \u{nn} - nn 위치에 유니코드 문자를 표현하는 두 개의 16진수가 배치되는 1바이트 유니코드 스칼라
 \u{nnnn} - nnnn 위치에 유니코드 문자를 표현하는 두 개의 16진수가 배치되는 2바이트 유니코드 스칼라
 \u{nnnnnnnn} - nnnnnnnn 위치에 유니코드 문자를 표현하는 두 개의 16진수가 배치되는 4바이트 유니코드 스칼라
 */

//var x = 0, y = 0, z = 0 가능
/*	let : 어떤 값이 한번 할당되면 이후에 변경될 수 없음
		let maximumNumber = 10
		let pi = 3.141592
		영문자 숫자 유니코드도 가능
		애플은 코드의 효율성과 실행 성능을 높이기 위해서 변수보다는 상수를 사용하라고 권장
*/

// 상수를 선언할 때도 타입 어노테이션을 사용하면 나중에 코드에서 값을 할당할 수 있음
let bookTitle: String
var book = true
if book {
	bookTitle = "Ios"
} else {
	bookTitle = "Android"
}
print(bookTitle)

/*	튜플
		여러 값을 하나의 개체에 일시적으로 묶는 방법
		저장되는 항목들은 어더한 타입도 될 수 있으며, 저장된 값들이 모두 동일한 타입일 필요도 없음
 */
let myTuple = (10, 12.1, "Hi")
var myString = myTuple.2
print(type(of: myTuple), myString)

let (myInt, myFloat, myString2) = myTuple
//튜플의 값을 석택적으로 추출하는 데 사용될 수 있으며, 무시하고 싶은 값에 밑줄을 사용하면 그 값은 무시가능
//let (myInt, _, myString2) = myTuple //12.1 무시

//튜플을 생성할 때 각 값에 이름을 할당할 수도 있음
let myTuple2 = (count: 10, length: 12.1, message: "hi")
print(myTuple2.message, myTuple2.2)

typealias Void = () // 아무 내용도 없는 튜플, typealias name = existing_type

// commit... sorry...
