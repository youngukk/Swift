/* 한 숫자를 입력받았을때 일의자리, 십의자리, 백의자리 ... 분리하기  */


/* 연산을 통해 분리하는 방법 */
let A = Int(readLine()!)!
let B = Int(readLine()!)!

print(A * (B % 10))
print(A * ((B % 100) / 10))
print(A * (B / 100))
print(A * B)

/* 기능을 통해 분리하는 방법 */
let num1 = Int(readLine()!)!
let num2 = readLine()!.map { Int(String($0))! }

print(num1 * num2[2])
print(num1 * num2[1])
print(num1 * num2[0])
print(num1 * Int(num2.map({ String($0) }).joined())!)
