/* 단어 공부 */

import Foundation

let s = readLine()!
var alphabet = [Int](repeating: 0, count: 26)

for value in s.utf8 {
		if value > 90 {
				alphabet[Int(value) - 97] += 1
		} else {
				alphabet[Int(value) - 65] += 1
		}
}

let max = alphabet.max()!
if alphabet.firstIndex(of: max) == alphabet.lastIndex(of: max) {
		print(UnicodeScalar(alphabet.firstIndex(of: max)! + 65)!)
} else {
		print("?")
}
