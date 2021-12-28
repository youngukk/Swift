import UIKit

																/* 클래스 */
// 설계도가 건물이 완성된 후의 모습을 나타내고 있는 것처럼 클래스는 객체가 생성되었을 때 어떠한 모습을 보일것인지를 정의
// 매서드는 어떠한 일을 하고 어떠한 속성이 있는지 등을 정의

class Man { //직접 지정
	var age : Int = 1						// stored property
	var weight : Double = 3.5		// stored property
	
	var manAge : Int {					// 매서드 같지만 computed property(계산 프로퍼티)이다
		get { // 값을 리턴하는 게터(getter)매서드 / 값을 대입하는 세터(setter) 메서드
			return age-1
		}
		set(USAAge){									//	set {
			age = USAAge + 1						//		age = newValue + 1
		}															//	}
	}
	func display(){
		print("나이 = \(age), 몸무게 = \(weight)")
	}
	class func cM(){
		print("cM은 클래스 매서드입니다.")
	}
	static func scM(){
		print("scM은 클래스 매서드(static)입니다")
	}

/* init(yourAge: Int, yourWeight : Double){
		age = yourAge
		weight = yourWeight
	} // desighnated initializer 모든 프로퍼티를 다 초기화시키는 생성자	*/
	
	// self. 으로 활용 가능
	init?(age: Int, weight : Double){
		if age < 0 || weight < 0 {	return nil	}
		else {
			self.age = age
			self.weight = weight
		}
	}
	
}

class Man1 {
	var age : Int?				// 옵셔널 변수는 nil로 자동 초기화
	var weight : Double!	// 옵셔널 변수는 nil로 자동 초기화
}

class Man2 { //직접 지정
	var age : Int
	var weight : Double
	init(){ //initializer로 초기화
		age = 1
		weight = 3.5
	}
}

//var kim : Man = Man() // init() 을 하나라도 직접 만들면 오류발생
var kim : Man = Man(age: 10, weight: 20.5)!
// 클래스명 다음의 괄호는 눈에 보이지 않는 default initializer를 나타냄
kim.display() // 인스턴스 메서드는 인스턴스가 호출(클래스/구조체/열거형에 생선된 객체를 인스턴스라 한다)
print(kim.age)
print(kim.manAge)
kim.manAge = 3
print(kim.manAge)

Man.cM()
Man.scM()

// method overloading : 생성자 중첩
// 매개변수의 개수와 자료형이 다른 같은 이름의 함수를 여러 개 정의
// 매개벼수가 다른 두 생성자를 통해 두가지 방법으로 인스턴스를 만들수 있음


//인스턴스 생성하면서 바로 강제 언래핑
//crash!!!!
//강제 언 랩핑하는 방벙은 위험하다
var lee : Man = Man(age: 0, weight: 3.5)!
lee.display()



var lee1 : Man? = Man(age: -1, weight: 3.5) // 옵셔널 형으로 선언
if let lee2 = lee1 { // 옵셔널 바인딩
	lee2.display()
}

if let lee3 = Man(age: 1, weight: 5.5){
	lee3.display()
}
