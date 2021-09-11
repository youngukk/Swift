/* 알파벳 찾기 */

var s = readLine() ?? ""
var returnArr = [Int8].init(repeating: -1, count: 26)
var char: Character
for i in 0..<Int8(s.count) {
		char = s.removeFirst()
		for j in 0..<26 {
				if char.asciiValue == (Character.init("a").asciiValue ?? 0) + UInt8(j), returnArr[j] == -1 {
						returnArr[j] = i
				}
		}
}
print(returnArr.map { String($0) }.joined(separator: " "))
