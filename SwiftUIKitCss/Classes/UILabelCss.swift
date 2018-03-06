//
//  UILabelCss.swift
//  aifengrong
//
//  Created by DuceShen on 2017/11/7.
//  Copyright © 2017年 nengneng. All rights reserved.
//

import Foundation
import UIKit

var labelFitSizeCss: UILabelCss = {
    $0.sizeToFit()
}

func +=(lhsCube: UILabel, rhsCube: String) {
    lhsCube.text = rhsCube
}

func +=(lhsCube: UILabel, rhsCube: UIFont) {
    lhsCube.font = rhsCube
}

func +=(lhsCube: UILabel, rhsCube: CGFloat) {
    lhsCube.font = rhsCube.customLightFont
}


extension Bool {
    var ableCss: UILabelCss {
        get {
            return {
                $0.isEnabled = self
            }
        }
    }
}

extension String {
    var textCss: UILabelCss {
        get {
            return {
                $0.text = self
            }
        }
    }
}

extension UIFont {
    var css: Css {
        get {
            return {
                if let a = $0 as? UILabel {
                    a.font = self
                    return
                }
                if let a = $0 as? UITextView {
                    a.font = self
                    return
                }
                if let a = $0 as? UITextField {
                    a.font = self
                    return
                }
                if let a = $0 as? UIButton {
                    a.titleLabel?.font = self
                    return
                }
            }
        }
    }
}

extension CGFloat {
    var lightFontCss: Css {
        get {
            if let font = self.customLightFont {
                return font.css
            }
            return {_ in }
        }
    }
    
    var regularFontCss: UILabelCss {
        get {
            if let font = self.customRegularFont {
                return font.css
            }
            return {_ in }
        }
    }
}

extension Int {
    var lightFontCss: Css {
        get {
            if let font = self.customRegularFont {
                return font.css
            }
            return {_ in }
        }
    }
    
    var regularFontCss: Css {
        get {
            if let font = self.customRegularFont {
                return font.css
            }
            return {_ in }
        }
    }
    
    var linesCss: UILabelCss {
        get {
            return {
                $0.numberOfLines = self
            }
        }
    }
}

extension NSTextAlignment {
    var css: UIViewCss {
        get {
            return {
                if let a = $0 as? UILabel {
                    a.textAlignment = self
                    return
                }
                if let a = $0 as? UITextField {
                    a.textAlignment = self
                    return
                }
                if let a = $0 as? UITextView {
                    a.textAlignment = self
                    return
                }
            }
        }
    }
}
