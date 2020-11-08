//: [Previous](@previous)

import Foundation

func bestProfessionals(pros: [[Int]], k: Int) -> [Int] {
    // Step 1: Find a max_distance
    var maxDistance = 0
    
    for tuple in pros {
        if tuple[0] > maxDistance {
            maxDistance = tuple[0]
        }
    }
    
    // Step 2: Calculate for every professional their PMS
    

}
