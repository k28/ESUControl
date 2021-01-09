//
//  ESUSegmentedControlTests.swift
//  ESUControlTests
//
//  Created by K.Hatano on 2021/01/09.
//

import XCTest
@testable import ESUControl

class ESUSegmentedControlTests: XCTestCase {
    
    func makeTestClass() -> ESUSegmentedControl {
        return ESUSegmentedControl(items: ["1", "2", "3"])
    }
    
    func testOnValueChanged() {
        let control = makeTestClass()
        var selected = 0
        control.onValueChanged = { val in
            selected = val
        }
        
        control.selectedSegmentIndex = 2
        control.sendActions(for: .valueChanged)
        //control.valueChanged()
        XCTAssertEqual(2, selected)
    }

}
