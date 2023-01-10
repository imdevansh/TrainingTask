//
//  QueueTest.swift
//  TddDemoTests
//
//  Created by GGS-BKS on 10/01/23.
//

import XCTest
@testable import TddDemo

final class QueueTest: XCTestCase {
    var obj:Queue?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    obj = Queue()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        obj = nil
    }
    func testEnqueue() {
            obj?.enqueue(21)
            obj?.enqueue(2)
            obj?.enqueue(29)
            obj?.enqueue(201)
            XCTAssertEqual(obj?.array.count, 4)
        }
        func testHead() {
            let result = obj?.head()
            XCTAssertEqual(result, nil)
        }
        func testTail() {
            let result = obj?.tail()
            XCTAssertEqual(result, nil)
        }
        
        func testdeQueue() {
            let result = obj?.dequeue()
            XCTAssertEqual(result,nil)
        }

}
