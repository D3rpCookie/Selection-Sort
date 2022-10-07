import Foundation
var unsortedString = [""] 
var unsortedIntegers: [Int] = []
while let input = readLine() {
    unsortedString.append(input)
}
var i = 0
var k = 0
var z:Float = 0
for _ in unsortedString {
    for s in unsortedString[i].utf8 {
        z += Float(s)/pow((1000.0), Float(k))
        k += 1 
    }
    unsortedIntegers.append(Int(z))
    k = 0
    i += 1
    z = 0
}

var total = 0
var x = 0 
var unsortedInteger = unsortedIntegers
for iterationIndex in 0 ..< unsortedInteger.count - 1 {

    var minIndex = iterationIndex

    for compareIndex in iterationIndex + 1 ..< unsortedInteger.count {
        if unsortedInteger[compareIndex] < unsortedInteger[minIndex] {
            minIndex = compareIndex
        }
    }
    unsortedString.swapAt(iterationIndex, minIndex)
    unsortedInteger.swapAt(iterationIndex, minIndex)
    x = 1 
    total += 1 
}
