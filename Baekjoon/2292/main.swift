/* 벌집 문제 */

import Foundation

let n = Int(readLine()!)!
var a = 1
for i in 1..<n+1 {
		if n == 1{
			print(1)
			break
		}
	  a += i * 6
		if n <= a {
				print(i + 1)
				break
		}
}
