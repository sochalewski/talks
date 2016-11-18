//
//  ClassProtocolTests.swift
//  SwiftPerformanceTests
//
//  Created by Piotr Sochalewski on 01.11.2016.
//  Copyright © 2016 Piotr Sochalewski. All rights reserved.
//

import XCTest

final class CircleProtocolClass: Drawable {
    var center: CGPoint
    var radius: Double
    
    init(center: CGPoint, radius: Double) {
        self.center = center
        self.radius = radius
    }
    func draw() {}
}

class ClassProtocolTests: XCTestCase {
    
    func testCircleProtocolClassPerformance() {
        measure {
            let circles: [Drawable] = (0..<repeatCount).map { _ in CircleProtocolClass(center: .zero, radius: 1.0) }
            circles.forEach { $0.draw() }
        }
    }
}
