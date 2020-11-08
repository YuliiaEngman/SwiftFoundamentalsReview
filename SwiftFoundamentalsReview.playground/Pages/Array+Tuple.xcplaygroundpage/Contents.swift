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
    for tuple in pros {
        if pros[0] == 0 {
          let prefessional1PMS = (maxDistance - tuple[0]) * tuple[1]
        } if pros[1] == 1 {
           let prefessional2PMS = (maxDistance - tuple[0]) * tuple[1]
        } if pros[2] == 2 {
            let prefessional3PMS = (maxDistance - tuple[0]) * tuple[1]
        } if pros[3] == 3 {
            let prefessional4PMS = (maxDistance - tuple[0]) * tuple[1]
        }
    }
    
    var bestPMSfromProfessionals = [prefessional1PMS, prefessional2PMS, prefessional3PMS,prefessional4PMS]
    bestProfessionals.sorted()
    
    
}
