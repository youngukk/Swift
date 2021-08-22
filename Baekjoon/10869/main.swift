import Foundation

// 한줄에 2개 이상의 숫자를 입력받으려면 split을 사용해 받을수 있다
let input = readLine()!
let lineArr = input.split(separator: " ")
let a = Int(lineArr[0])!
let b = Int(lineArr[1])!

print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a % b)

