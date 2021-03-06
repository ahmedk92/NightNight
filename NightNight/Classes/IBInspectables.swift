//
//  UIView+IBInspectable.swift
//  Pods
//
//  Created by Draveness on 7/7/16.
//
//

import Foundation

public extension UIView {
    @IBInspectable public var nightBackgroundColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NightKeys.backgroundColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NightKeys.backgroundColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            
            let backgroundColor = self.backgroundColor ?? .clear
            self.mixedBackgroundColor = MixedColor.init(normal: backgroundColor, night: newValue ?? backgroundColor)
        }
    }
    /*@IBInspectable public var normalBackgroundColor: UIColor? {
        get { return objc_getAssociatedObject(self, &NormalKeys.backgroundColor) as? UIColor }
        set {
            objc_setAssociatedObject(self, &NormalKeys.backgroundColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }*/
}

public extension UILabel {
    @IBInspectable public var nightTextColor: UIColor? {
        get {
            return objc_getAssociatedObject(self, &NightKeys.textColor) as? UIColor
        }
        
        set {
            objc_setAssociatedObject(self, &NightKeys.textColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            
            let textColor = self.textColor ?? .white
            mixedTextColor = MixedColor(normal: textColor, night: newValue ?? textColor)
        }
    }
}

public extension UITextField {
    
    @IBInspectable public var nightTextColor: UIColor? {
        get {
            return objc_getAssociatedObject(self, &NightKeys.textColor) as? UIColor
        }
        
        set {
            objc_setAssociatedObject(self, &NightKeys.textColor, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            
            let textColor = self.textColor ?? .white
            mixedTextColor = MixedColor(normal: textColor, night: newValue ?? textColor)
        }
    }
}
