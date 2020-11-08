//: [Previous](@previous)

import Foundation

func bestProfessionals(pros: [[Int]]) -> Int { // trying to solve and return array of best results from worst to best
    
    // Step 1: Find a max_distance
    var maxDistance = 0
    
    for tuple in pros {
        if tuple[0] > maxDistance {
            maxDistance = tuple[0]
        }
    }
    
    /*
    var prefessional1PMS = 0
    var prefessional2PMS = 0
    var prefessional3PMS = 0
    var prefessional4PMS = 0
    
    // Step 2: Calculate for every professional their PMS
    for tuple in pros {
        if pros.firstIndex {
          prefessional1PMS = (maxDistance - tuple[0]) * tuple[1]
        } else if pros.firstIndex + 1 == 1 {
           prefessional2PMS = (maxDistance - tuple[0]) * tuple[1]
        } else if pros.firstIndex + 2 == 2 {
            prefessional3PMS = (maxDistance - tuple[0]) * tuple[1]
        } else if pros.firstIndex + 3 == 3 {
            prefessional4PMS = (maxDistance - tuple[0]) * tuple[1]
        }
    }
    */
    /*
     let arr = ["a","b","c","a"]

     let indexOfA = arr.firstIndex(of: "a") // 0
     let indexOfB = arr.lastIndex(of: "a") // 3
     */
    
    //var bestPMSfromProfessionals = prefessional1PMS, prefessional2PMS, prefessional3PMS,prefessional4PMS
    
    return maxDistance
}

print(bestProfessionals(pros: [[5, 4], [4, 3], [6, 5], [3, 5]]))
