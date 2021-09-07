/* 베르트랑 공준 */
import Foundation

var isPrime = [false, false] + Array(repeating: true, count: 246912)

for i in 2...246913 {
		if isPrime[i] {
				for j in stride(from: i*i, to: 246913, by: i) {
						isPrime[j] = false
				}
		}
}

while true {
		let n = Int(readLine()!)!
		var countPrime = 0
		
		if n == 0 {
				break
		}
		
		for i in (n+1)...(2*n) {
				if isPrime[i] {
						countPrime += 1
				}
		}
		
		print(countPrime)
}
