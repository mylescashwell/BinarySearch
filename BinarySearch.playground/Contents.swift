import UIKit

// MARK: - Binary Search
var numbers = [1, 4, 6, 7, 10, 12, 18, 19, 23, 24, 34, 44, 58, 65]

func binarySearch(array: [Int], key: Int) -> Bool {
    if array.count == 0 { return false }
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = array.count / 2
    let midValue = array[midIndex]
    
    if key < array[minIndex] || key > array[maxIndex] {
        print("\(key) IS NOT IN ARRAY.")
        return false
    }
    
    if key > midValue {
        let highSlice = Array(array[midIndex + 1...maxIndex])
        return binarySearch(array: highSlice, key: key)
    }
    
    if key < midValue {
        let lowSlice = Array(array[minIndex...midIndex - 1])
        return binarySearch(array: lowSlice, key: key)
    }
    
    if key == midValue {
        print("\(key) FOUND.")
        return true
    }
    
    return false
}

binarySearch(array: numbers, key: 25)
