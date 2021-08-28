import Foundation

func hanoi(_ n: Int, _ left: Int, _ mid: Int, _ right: Int) {
	if n == 1 {
		print("\(left) \(right)")
	}
	else{
		hanoi( n-1, left, right, mid)
		print("\(left) \(right)")
		hanoi( n-1, mid, left, right)
	}
}

let T: Int = Int(readLine() ?? "") ?? 0
print(pow(2, T) - 1)
hanoi( T, 1, 2, 3)
