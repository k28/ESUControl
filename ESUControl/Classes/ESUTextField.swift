//
//  ESUTextField.swift
//  EZUControl
//
//  Created by K.Hatano on 2020/12/25.
//

import UIKit

open class ESUTextField: UITextField {
    
    /// Called when the value changes
    open var onEditingChanged: ((_ text: inout String) -> Void) = { _ in }
    /// Called when the editing did end
    open var onEditingDidEnd: ((_ text: String) -> Void) = { _ in }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        self.addTarget(self, action: #selector(editingChanged), for: UIControl.Event.editingChanged)
        self.addTarget(self, action: #selector(editingChanged), for: UIControl.Event.editingDidEnd)
    }
    
    @objc func editingChanged() {
        var text = self.text ?? ""
        onEditingChanged(&text)
        self.text = text
    }
    
    @objc func editingDidEnd() {
        onEditingDidEnd(self.text ?? "")
    }
    
}

