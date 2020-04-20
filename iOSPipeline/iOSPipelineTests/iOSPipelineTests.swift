//
//  iOSPipelineTests.swift
//  iOSPipelineTests
//
//  Created by Nithin Kumar on 4/17/20.
//  Copyright © 2020 Diya Systems. All rights reserved.
//

import XCTest
@testable import iOSPipeline

class iOSPipelineTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

     func testIncrement() {
           let counter = Counter()

           counter.increment()

           XCTAssertEqual(counter.count, 1)
       }

       func testIncrementBy() {
           let counter = Counter()

           counter.increment(by: 10)

           XCTAssertEqual(counter.count, 10)
       }
       

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
