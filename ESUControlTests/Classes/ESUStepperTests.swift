//
//  ESUStepperTests.swift
//  ESUControlTests
//
//  Created by K.Hatano on 2021/01/09.
//

import XCTest
@testable import ESUControl

class ESUStepperTests: XCTestCase {

    func makeTestClass() -> ESUStepper {
        return ESUStepper()
    }
    
    func testOnValueChanged() {
        let control = makeTestClass()
        var value: Double = 0
        control.onValueChanged = { val in
            value = val
        }
        control.value = 0.7
        control.sendActions(for: .valueChanged)
        // control.valueChanged()
        XCTAssertEqual(0.7, value)
        
    }
}
