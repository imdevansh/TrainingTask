//
//  ArrayProblem.swift
//  TddDemo
//
//  Created by GGS-BKS on 09/01/23.
//

import Foundation
struct ArrayProblem {
    var numbers : [Int] = [1,2,3,4]
    // Add element function
    mutating func addElement(n1:Int){
        if numbers.contains(n1){return}
        numbers.append(n1)
        numbers.sorted()
    }
    // Add alll function
    func addAll(numbers: [Int]) -> Int?{
        var sum = 0
        for i in numbers{
            sum = sum + i
        }
         return sum
    }
    // max function
    func max(numbers:[Int])->Int?{
        return numbers.last
    }
    // min function
    func min(numbers:[Int])->Int?{
        return numbers[0]
    }
    //delete from index funtion
    mutating func deleteFromIndex(index:Int?){
        numbers.remove(at: index!)
        numbers.sorted()
    }
    // is exist function
    func isExist(element:Int?) -> Bool{
        if numbers.contains(element!){
            return true
        }
        else{
            return false
        }
    }

}

