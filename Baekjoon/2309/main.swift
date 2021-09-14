import Foundation

// MARK: 초기값 설정
var dwarfsHeight = [Int]()

(0...8).forEach { (_) in
		dwarfsHeight.append(Int(readLine()!)!)
}

var allDwarfsHeight = dwarfsHeight.reduce(0) { $0 + $1 }

// MARK: 결과값 출력 함수
func printSevenDwarfsHeight(exceptDwarfs indices: [Int]) {
		indices.reversed().forEach { dwarfsHeight.remove(at: $0) }
		dwarfsHeight.sort()
		dwarfsHeight.forEach { print($0) }
}

// MARK: solve
func solve() {
		for (firstDwarfIndex, firstDwarfHeight) in dwarfsHeight.enumerated() {
				if allDwarfsHeight - firstDwarfHeight <= 100 {
						continue
				}

				for secondDwarfIndex in (firstDwarfIndex + 1)..<9 {
						let secondDwarfHeight = dwarfsHeight[secondDwarfIndex]
						if (allDwarfsHeight - (firstDwarfHeight + secondDwarfHeight) == 100) {
								printSevenDwarfsHeight(exceptDwarfs: [firstDwarfIndex, secondDwarfIndex])
								return
						}
				}
		}

}

solve()
