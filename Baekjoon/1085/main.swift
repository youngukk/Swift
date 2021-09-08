/* 직사각형에서 탈출 */

import Foundation

var arr = readLine()!.split(separator: " ").map{ Int($0)! }
arr[2] = arr[2] - arr[0]
arr[3] = arr[3] - arr[1]
var tmp = arr[0]
for i in 0..<arr.count {
		if tmp > arr[i] {
				tmp = arr[i]
		}
}
print(tmp)
