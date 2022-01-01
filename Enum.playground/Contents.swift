import UIKit


enum SomeEnumeration {
	
}

enum CompassPoint {
	case north
	case south
	case east
	case west
}

enum Planet {
	case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead = CompassPoint.west

directionToHead = .south

switch directionToHead {
case .north:
	print("Lots of planet have a north")
case .south:
	print("Watch out for penguins")
case .east:
	print("Where the sun rises")
case .west:
	print("Where the skies are blue")
}

// prints " Watch out for penguins"

let somePlanet = Planet.earth
switch somePlanet {
case .earth:
		print("Mostly harmless")
default:
		print("Not a safe place for humans")
}
// Prints "Mostly harmless"

enum Beverage: CaseIterable {
		case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")
// Prints "3 beverages available"

for beverage in Beverage.allCases{
	print(beverage)
}

enum Barcode {
	case upc(Int, Int, Int, Int)
	case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ASDFGQWETZVSF")

switch productBarcode {
case .upc(let numberSystem, let manufacturerm, let product, let check):
	print("UPC : \(numberSystem), \(manufacturerm), \(product), \(check)")
case .qrCode(let productCode):
	print("QR code: \(productCode)")
}

switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
		print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
		print("QR code: \(productCode).")
}
