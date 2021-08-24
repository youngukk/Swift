import Foundation

let input = readLine()!
var T = Int(input)!

for i in 0 ... T{
	let number = readLine()!
	let lineArr = number.split(separator: " ")

	
	print("Case #\(i + 1) : \(lineArr[0] + lineArr[1])")
}
	
