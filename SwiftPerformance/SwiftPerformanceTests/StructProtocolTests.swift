//
//  StructProtocolTests.swift
//  SwiftPerformanceTests
//
//  Created by Piotr Sochalewski on 01.11.2016.
//  Copyright © 2016 Piotr Sochalewski. All rights reserved.
//

import XCTest

protocol Drawable {
    func draw()
}

struct CircleProtocolStruct: Drawable {
    var center: CGPoint
    var radius: Double
    
    func draw() {}
}

class StructProtocolTests: XCTestCase {
    
    func testCircleProtocolStructPerformance() {
        measure {
            let circles: [Drawable] = (0..<repeatCount).map { _ in CircleProtocolStruct(center: .zero, radius: 1.0) }
            circles.forEach { $0.draw() }
        }
    }
}
