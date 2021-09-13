/*
						별찍기
	***************************
	* ** ** ** ** ** ** ** ** *
	***************************
	***   ******   ******   ***
	* *   * ** *   * ** *   * *
	***   ******   ******   ***
	***************************
	* ** ** ** ** ** ** ** ** *
	***************************
	*********         *********
	* ** ** *         * ** ** *
	*********         *********
	***   ***         ***   ***
	* *   * *         * *   * *
	***   ***         ***   ***
	*********         *********
	* ** ** *         * ** ** *
	*********         *********
	***************************
	* ** ** ** ** ** ** ** ** *
	***************************
	***   ******   ******   ***
	* *   * ** *   * ** *   * *
	***   ******   ******   ***
	***************************
	* ** ** ** ** ** ** ** ** *
	***************************
*/
import Foundation

func getPatter (_ n: UInt16) -> [String] {
		var returnStr = [String].init(repeating: "", count: Int(n))
		if (n / 3) > 1 {
				let beforeStr = getPatter(n / 3)
				for i in 0..<n {
						switch (i + 1) {
						case (n / 3 + 1)...(2 * (n / 3)):
								returnStr[Int(i)].append(beforeStr[Int(i % (n / 3))])
								returnStr[Int(i)].append(String.init(repeating: " ", count: Int(n) / 3))
								returnStr[Int(i)].append(beforeStr[Int(i % (n / 3))])
						default:
								returnStr[Int(i)].append(beforeStr[Int(i % (n / 3))])
								returnStr[Int(i)].append(beforeStr[Int(i % (n / 3))])
								returnStr[Int(i)].append(beforeStr[Int(i % (n / 3))])
						}
				}
				return returnStr
		} else if (n / 3) == 1 {
				return ["***", "* *", "***"]
		}
		return []
}
let n = UInt16(readLine() ?? "") ?? 0
print(getPatter(n).joined(separator: "\n"))

