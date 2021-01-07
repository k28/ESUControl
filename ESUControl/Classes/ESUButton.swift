//
//  ESUButton.swift
//  ESUControl
//
//  Created by K.Hatano on 2021/01/08.
//

import UIKit

open class ESUButton: UIButton {
    
    open var onTouchDown: (() -> Void) = { }
    open var onTouchDownRepeat: (() -> Void) = { }
    open var onTouchDragInside: (() -> Void) = { }
    open var onTouchDragOutside: (() -> Void) = { }
    open var onTouchDragEnter: (() -> Void) = { }
    open var onTouchDragExit: (() -> Void) = { }
    open var onTouchUpIndide: (() -> Void) = { }
    open var onTouchUpOutside: (() -> Void) = { }
    open var onTouchCancel: (() -> Void) = { }

    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        self.addTarget(self, action: #selector(touchDown),        for: UIControl.Event.touchDown)
        self.addTarget(self, action: #selector(touchDownRepeat),  for: UIControl.Event.touchDownRepeat)
        self.addTarget(self, action: #selector(touchDragInside),  for: UIControl.Event.touchDragInside)
        self.addTarget(self, action: #selector(touchDragOutside), for: UIControl.Event.touchDragOutside)
        self.addTarget(self, action: #selector(touchDragEnter),   for: UIControl.Event.touchDragEnter)
        self.addTarget(self, action: #selector(touchDragExit),    for: UIControl.Event.touchDragExit)
        self.addTarget(self, action: #selector(touchUpInside),    for: UIControl.Event.touchUpInside)
        self.addTarget(self, action: #selector(touchUpOutside),   for: UIControl.Event.touchUpOutside)
        self.addTarget(self, action: #selector(touchCancel),      for: UIControl.Event.touchCancel)
    }
    
    @objc func touchDown() {
        self.onTouchDown()
    }
    
    @objc func touchDownRepeat() {
        self.onTouchDownRepeat()
    }
    
    @objc func touchDragInside() {
        self.onTouchDragInside()
    }
    
    @objc func touchDragOutside() {
        self.onTouchDragOutside()
    }
    
    @objc func touchDragEnter() {
        self.onTouchDragEnter()
    }
    
    @objc func touchDragExit() {
        self.onTouchDragExit()
    }
    
    @objc func touchUpOutside() {
        self.onTouchUpOutside()
    }
    
    @objc func touchUpInside() {
        self.onTouchUpIndide()
    }
    
    @objc func touchCancel() {
        self.onTouchCancel()
    }
}
