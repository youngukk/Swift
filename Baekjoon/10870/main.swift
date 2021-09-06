import Foundation

var n = Int(readLine()!)!

func fibonacii(n: Int) -> Int {
		if n == 0 || n == 1 {
				return n
		} else {
				return fibonacii(n: n - 1) + fibonacii(n: n - 2)
		}
}

print(fibonacii(n: n))
