let input = readLine()!
let num = input.split(separator: " ")
let A = Int(num[0])!
let B = Int(num[1])!

if A > B {
	print(">")
} else if A < B {
	print("<")
} else if A == B {
	print("==")
}
