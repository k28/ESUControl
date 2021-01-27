//
//  ESUTextView.swift
//  ESUControl
//
//  Created by K.Hatano on 2021/01/28.
//

import UIKit

open class ESUTextView: UITextView {
    
    /// Called when the value changes
    open var onEditingChanged: ((_ text: inout String) -> Void) = { _ in }
    /// Called when the editing did end
    open var onEditingDidEnd: ((_ text: String) -> Void) = { _ in }

    override public init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        setup()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        self.delegate = self
    }
    
    func editingChanged() {
        if self.markedTextRange != nil {
            return
        }
        
        var text = self.text ?? ""
        self.onEditingChanged(&text)
        self.text = text
    }
    
    func editingDidEnd() {
        self.onEditingDidEnd(self.text)
    }
    
}

extension ESUTextView: UITextViewDelegate {
    
    public func textViewDidChange(_ textView: UITextView) {
        editingChanged()
    }

    public func textViewDidEndEditing(_ textView: UITextView) {
        editingDidEnd()
    }
}
