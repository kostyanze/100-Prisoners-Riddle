import UIKit
import Foundation
let prisoners = Array(1...100)
var successfulPrisoners = 0
var numI = 0
for i in 1...1000 {
    let boxes = Array(1...100).shuffled()
    var findings = 0
    var prisonersIndex = 0
    repeat {
        var trying = 0
        var boxIndex = prisoners[prisonersIndex] - 1
        repeat {
            if prisoners[prisonersIndex] == boxes[boxIndex] {
                findings += 1
                break
            } else {
                boxIndex = boxes[boxIndex] - 1
            }
            trying += 1
        } while trying <= 49
        prisonersIndex += 1
    } while prisonersIndex <= (prisoners.count - 1) && findings == prisonersIndex
    if findings == prisoners.count {
        successfulPrisoners += 1
    }
    numI = i
}
print("Процент успеха в \(numI) итерациях составил \(Float16(successfulPrisoners) * 100 / Float16(numI)) %")
