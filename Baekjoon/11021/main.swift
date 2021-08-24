import Foundation

let input = Int(readLine()!)!

for i in 1 ... input{
	
	let number = readLine()!.split(separator: " ").map{Int($0)!}
	
	print("Case #\(i) : \(number[0] + number[1])")
}
	
