//
//  Stack.swift
//  TddDemo
//
//  Created by GGS-BKS on 10/01/23.
//

import Foundation
struct Stack {
    var array:[Int] = []
    mutating func push(_ element: Int?) {
        guard let element=element else{
            return
        }
            array.append(element)
        }
    mutating func pop() -> Int {
            return array.removeLast()
        }
        
    func peek() -> Int {
            guard let topElement = array.last else { fatalError("This stack is empty.") }
            return topElement
    }
}
