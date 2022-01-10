import UIKit

class Counter {
		var count = 0
		func increment() {
				count += 1
		}
		func increment(by amount: Int) {
				count += amount
		}
		func reset() {
				count = 0
		}
}

let counter = Counter()
// the initial counter value is 0
counter.increment()
// the counter's value is now 1
counter.increment(by: 5)
// the counter's value is now 6
counter.reset()
// the counter's value is now 0


//func increment() {
//		self.count += 1
//}
//
//struct Point {
//		var x = 0.0, y = 0.0
//		func isToTheRightOf(x: Double) -> Bool {
//				return self.x > x
//		}
//}
//
//let somePoint = Point(x: 4.0, y: 5.0)
//if somePoint.isToTheRightOf(x: 1.0) {
//		print("This point is to the right of the line where x == 1.0")
//}
//// Prints "This point is to the right of the line where x == 1.0"

struct Point {
		var x = 0.0, y = 0.0
		mutating func moveBy(x deltaX: Double, y deltaY: Double) {
				x += deltaX
				y += deltaY
		}
}

var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")
// Prints "The point is now at (3.0, 4.0)"

let fixedPoint = Point(x: 3.0, y: 3.0)
//fixedPoint.moveBy(x: 2.0, y: 3.0)
// this will report an error

class SomeClass {
		class func someTypeMethod() {
				// type method implementation goes here
		}
}
SomeClass.someTypeMethod()

struct LevelTracker {
		static var highestUnlockedLevel = 1
		var currentLevel = 1

		static func unlock(_ level: Int) {
				if level > highestUnlockedLevel { highestUnlockedLevel = level }
		}

		static func isUnlocked(_ level: Int) -> Bool {
				return level <= highestUnlockedLevel
		}

		@discardableResult
		mutating func advance(to level: Int) -> Bool {
				if LevelTracker.isUnlocked(level) {
						currentLevel = level
						return true
				} else {
						return false
				}
		}
}

class Player {
		var tracker = LevelTracker()
		let playerName: String
		func complete(level: Int) {
				LevelTracker.unlock(level + 1)
				tracker.advance(to: level + 1)
		}
		init(name: String) {
				playerName = name
		}
}

var player = Player(name: "Argyrios")
player.complete(level: 1)
print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
// Prints "highest unlocked level is now 2"

player = Player(name: "Beto")
if player.tracker.advance(to: 6) {
		print("player is now on level 6")
} else {
		print("level 6 hasn't yet been unlocked")
}
// Prints "level 6 hasn't yet been unlocked"

