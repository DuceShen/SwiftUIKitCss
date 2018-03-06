//
//  UIFont.swift
//  aifengrong
//
//  Created by DuceShen on 2017/11/7.
//  Copyright © 2017年 nengneng. All rights reserved.
//

import Foundation
import UIKit


fileprivate let fontNameBefore9 = "Helvetica"
fileprivate let fontNameFor9AndPlus = "PingFangSC"

extension UIFont {
    class func customRegularFontOfSize(font: CGFloat) -> UIFont? {
        return font.customRegularFont
    }
    class func customFontOfSize(font: CGFloat) -> UIFont? {
        return font.customLightFont
    }
}

extension CGFloat {
    var customRegularFont: UIFont? {
        get {
            if iOSVersion < 9 {
                return UIFont.init(name: "\(fontNameBefore9)-Regular", size: self)
            }
            else {
                return UIFont.init(name: "\(fontNameFor9AndPlus)-Regular", size: self)
            }
        }
    }
    
    var customLightFont: UIFont? {
        get {
            if iOSVersion < 9 {
                return UIFont.init(name: "\(fontNameBefore9)-Light", size: self)
            }
            else {
                return UIFont.init(name: "\(fontNameFor9AndPlus)-Light", size: self)
            }
        }
    }
}

extension Int {
    var customRegularFont: UIFont? {
        get  {
            return CGFloat(self).customRegularFont
        }
    }
    
    var customLightFont: UIFont? {
        get {
            return CGFloat(self).customLightFont
        }
    }
}

extension Double {
    var customRegularFont: UIFont? {
        get {
            return CGFloat(self).customRegularFont
        }
    }
    
    var customLightFont: UIFont? {
        get {
            return CGFloat(self).customLightFont
        }
    }
}

extension Float {
    var customRegularFont: UIFont? {
        get {
            return CGFloat(self).customRegularFont
        }
    }
    
    var customLightFont: UIFont? {
        get {
            return CGFloat(self).customLightFont
        }
    }
}
