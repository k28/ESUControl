//
//  ESUSliderTests.swift
//  ESUControlTests
//
//  Created by K.Hatano on 2021/01/09.
//

import XCTest
@testable import ESUControl

class ESUSliderTests: XCTestCase {
    
    func makeTestClass() -> ESUSlider {
        return ESUSlider()
    }
    
    func testOnValueChanged() {
        let control = makeTestClass()
        var value: Float = 0
        control.onValueChanged = { val in
            value = val
        }
        
        control.setValue(0.7, animated: false)
        control.sendActions(for: .valueChanged)
        //control.valueChanged()
        XCTAssertEqual(0.7, value)
    }
}
