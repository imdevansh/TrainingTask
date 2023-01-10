//
//  Queue.swift
//  TddDemo
//
//  Created by GGS-BKS on 10/01/23.
//

import Foundation
struct Queue{
    var array:[Int]=[]
    
    mutating func enqueue(_ value: Int) {
        array.append(value)
      }

      mutating func dequeue() ->Int? {
        guard !array.isEmpty else {
          return nil
        }
          var x = array.first
        array.removeFirst()
          return x
      }

      func head() -> Int? {
        return array.first
      }

      func tail() -> Int? {
        return array.last
      }
}

