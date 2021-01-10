//
//  ESUDatePicker.swift
//  ESUControl
//
//  Created by K.Hatano on 2021/01/07.
//

import UIKit

open class ESUDatePicker: UIDatePicker {
    
    /// Called when the value changes
    open var onValueChanged:((_ date: Date) -> Void) = { _ in }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        self.addTarget(self, action: #selector(valueChanged), for: UIControl.Event.valueChanged)
    }
    
    @objc func valueChanged() {
        onValueChanged(self.date)
    }
    
}
