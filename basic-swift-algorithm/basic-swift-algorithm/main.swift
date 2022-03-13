//
//  main.swift
//  basic-swift-algorithm


import Foundation



print("Write an Integer Array and it will find the maximum number and the minimum number : ")


guard let intTemp = readLine() else { fatalError("Bad input") }
let intArray: [Int] = intTemp.split(separator: " ").map {
    if let intItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return intItem
    } else { fatalError("Bad input") }
}

func maximum(array: [Int]) -> Int? {
    guard var maximum = array.first else { return nil }
    
    for element in array.dropFirst() {
        maximum = element > maximum ? element : maximum
    }
    return maximum
}


func minimum(array: [Int]) -> Int? {
    guard var minimum = array.first else { return nil }
 
    for element in array.dropFirst() {
        minimum = element < minimum ? element : minimum
    }
    return minimum
}




print("Maximum number : ",maximum(array: intArray)!)
print("Minimum number : ",minimum(array: intArray)!)








