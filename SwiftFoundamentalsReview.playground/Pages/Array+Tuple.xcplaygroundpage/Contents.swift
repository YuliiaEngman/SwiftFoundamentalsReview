//: [Previous](@previous)

import Foundation

func bestProfessionals(pros: [[Int]]) -> [Int:Int] { // trying to solve and return array of best results from worst to best
    
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
     and store that in dictionary, where the key is index of pro and value is pro's PMS number
     
    var freqDict = [Int: Int]()
     
      for num in numbers {
        if let count = freqDict[num] {
          freqDict[num] = count + 1
        } else {
          freqDict[num] = 1
        }
      }
     */
    
     var prosPMSresultsDict = [Int: Int]()
     
    for tuple in pros {
        if tuple == pros[0] {
          prosPMSresultsDict[0] = (maxDistance - tuple[0]) * tuple[1]
        } else if tuple == pros[1] {
           prosPMSresultsDict[1] = (maxDistance - tuple[0]) * tuple[1]
        } else if tuple == pros[2] {
            prosPMSresultsDict[2] = (maxDistance - tuple[0]) * tuple[1]
        } else if tuple == pros[3] {
            prosPMSresultsDict[3] = (maxDistance - tuple[0]) * tuple[1]
        }
    }
    
    return prosPMSresultsDict
}

print(bestProfessionals(pros: [[5, 4], [4, 3], [6, 5], [3, 5]]))
