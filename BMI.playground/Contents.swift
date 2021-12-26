import UIKit
import Foundation
//let weight = 60.0
//let height = 170.0
//let bmi = weight / (height * height * 0.0001) // kh / m * m
//let shortenedBmi = String(format: "%.1f", bmi)
//var body = ""
//if bmi >= 40{
//	body = "3단계 비만"
//} else if bmi >= 30 && bmi < 40 {
//	body = "2단계 비만"
//} else if bmi >= 25 && bmi < 30 {
//	body = "1단계 비만"
//} else if bmi >= 18.5 && bmi < 25 {
//	body = "정상"
//} else {
//	body = "저체중"
//}
//
//print("BMI : \(shortenedBmi), 판정 : \(body)")

func clacBMI(weight : Double, height : Double) -> String {
	let bmi = weight / (height * height * 0.0001) // kh / m * m
	let shortenedBmi = String(format: "%.1f", bmi)
	var body = ""
	if bmi >= 40{
		body = "3단계 비만"
	} else if bmi >= 30 && bmi < 40 {
		body = "2단계 비만"
	} else if bmi >= 25 && bmi < 30 {
		body = "1단계 비만"
	} else if bmi >= 18.5 && bmi < 25 {
		body = "정상"
	} else {
		body = "저체중"
	}
	return "BMI : \(shortenedBmi), 판정 : \(body)"
}

print(clacBMI(weight: 60.0, height: 170.0))
