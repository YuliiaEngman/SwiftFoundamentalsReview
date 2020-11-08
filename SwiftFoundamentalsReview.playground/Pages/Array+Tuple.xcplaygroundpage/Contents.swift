//: [Previous](@previous)

import Foundation

func bestProfessionals(pros: [[Int]], k: Int) { // trying to solve and return array of best results from worst to best
    
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
    
  //let sortedDictValues = prosPMSresultsDict.values.sorted(by: {$0 > $1})
    let sortedDictByValues = prosPMSresultsDict.sorted(by: {$0.value < $1.value})
    print(sortedDictByValues)
    
    // I found the first choice of pro
//    var largestValue = 0
//    var keyForLargestValue = 0
//    for (key, value) in sortedDictByValues {
//        if value > largestValue {
//            largestValue = value
//            keyForLargestValue = key
//        }
//    }
    
    // need to finf all the choices
    // let intIndex = 1 // where intIndex < myDictionary.count
    //let index = myDictionary.index(myDictionary.startIndex, offsetBy: intIndex)
    //myDictionary.keys[index]
    
    let kIndexOnDict = sortedDictByValues.index(sortedDictByValues.endIndex, offsetBy: -k)
    var keyForLargestValue = [Int]()
    
    for key in sortedDictByValues[kIndexOnDict ... sortedDictByValues.endIndex] {
        keyForLargestValue.append(key)
    }
    
    print(keyForLargestValue)
    
}

print(bestProfessionals(pros: [[5, 4], [4, 3], [6, 5], [3, 5]], k: 2)) // should return [3, 1]


