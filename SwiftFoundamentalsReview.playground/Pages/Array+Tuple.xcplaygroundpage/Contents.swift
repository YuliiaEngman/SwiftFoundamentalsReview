//: [Previous](@previous)

import Foundation

func bestProfessionals(pros: [[Int]]) { // trying to solve and return array of best results from worst to best
    
    // Step 1: Find a max_distance
    var maxDistance = 0
    
    for tuple in pros {
        if tuple[0] > maxDistance {
            maxDistance = tuple[0] // returns 6 -> correct!
        }
    }

    
    // Step 2: Calculate for every professional their PMS
    // and store that in dictionary, where the key is index of pro and value is pro's PMS number
     
    
     var prosPMSresultsDict = [Int: Int]()
     var count = 0
    // this code is correct but I need update to make it work for all keys
//    for tuple in pros {
//        if tuple == pros[0] {
//          prosPMSresultsDict[0] = (maxDistance - tuple[0]) * tuple[1]
//        } else if tuple == pros[1] {
//           prosPMSresultsDict[1] = (maxDistance - tuple[0]) * tuple[1]
//        } else if tuple == pros[2] {
//            prosPMSresultsDict[2] = (maxDistance - tuple[0]) * tuple[1]
//        } else if tuple == pros[3] {
//            prosPMSresultsDict[3] = (maxDistance - tuple[0]) * tuple[1]
//        }
//    }
    // [3: 15, 2: 0, 0: 4, 1: 6]
    
    // I need to rewrite the code above that it would work with all cases
    // gives me incorrect key,value pairs
    
    for tuple in pros {
      if tuple == pros[0] {
       prosPMSresultsDict[0] = (maxDistance - tuple[0]) * tuple[1]
        count += 1
      } else {
        prosPMSresultsDict[count] = (maxDistance - tuple[0]) * tuple[1]
        count += 1
        }
    } // [0: 4, 3: 15, 2: 0, 1: 6]
    
    
    // Step 3: sort dictionary by value
    
    let sortedDict = prosPMSresultsDict.keys.sorted(by: {$1 > $0})
    
    print(sortedDict)
}

print(bestProfessionals(pros: [[5, 4], [4, 3], [6, 5], [3, 5]]))


