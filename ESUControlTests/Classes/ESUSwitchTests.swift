//
//  ESUSwitchTests.swift
//  ESUControlTests
//
//  Created by K.Hatano on 2021/01/09.
//

import XCTest
@testable import ESUControl

class ESUSwitchTests: XCTestCase {

    func makeTestClass() -> ESUSwitch {
        return ESUSwitch()
    }
    
    func testOnValueChanged() {
        let control = makeTestClass()
        var enabled = false
        control.onValueChanged = { val in
            enabled = val
        }
        control.isEnabled = true
        control.valueChanged()
        XCTAssertTrue(enabled)
        
        control.isEnabled = false
        control.valueChanged()
        XCTAssertFalse(enabled)
    }
    
}
