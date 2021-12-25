import UIKit

let defaultColor = "black"
var userDefinedColor: String?

var myColor = userDefinedColor ?? defaultColor

print(myColor)
userDefinedColor = "red"
myColor = userDefinedColor ?? defaultColor
print(myColor)

let defaultAge = 1
var age : Int? = 3
print(age as Any)
var myAge = age ?? defaultAge
print(myAge)

// as
// 부모인스턴스 as! 자식 클래스 	// 다운캐스팅 일반 타입으로 반환
													// 다운캐스팅이 반드시 성공할 것이라는 확신이 있을 떄
// 부모인스턴스 as? 자식 클래스 	// 다운캐스팅 옵셔널 타입으로 반환, 확신이 없을 경우

var x: Any = "hello"
print(x, type(of: x))
x = 10
var y : Int = x as! Int
var z : Int? = x as? Int
print(type(of: x))
print(type(of: y))
print(type(of: z))

