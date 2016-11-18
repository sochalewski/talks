//
//  SimpleStructTests.swift
//  SwiftPerformanceTests
//
//  Created by Piotr Sochalewski on 01.11.2016.
//  Copyright © 2016 Piotr Sochalewski. All rights reserved.
//

import XCTest

let repeatCount = 100_000_000

struct CircleStruct {
    var center: CGPoint
    var radius: Double
    
    func draw() {}
}

class SimpleStructTests: XCTestCase {
    
    func testCircleStructPerformance() {
        measure {
            let circles = (0..<repeatCount).map { _ in CircleStruct(center: .zero, radius: 1.0) }
            circles.forEach { $0.draw() }
        }
    }
}
