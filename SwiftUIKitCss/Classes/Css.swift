//
//  Css.swift
//  aifengrong
//
//  Created by DuceShen on 2017/11/7.
//  Copyright © 2017年 nengneng. All rights reserved.
//

import Foundation
import UIKit

typealias Css               = (NSObject)->()
typealias UIViewCss         = (UIView)->()
typealias UILabelCss        = (UILabel)->()
typealias UIButtonCss       = (UIButton)->()
typealias UITextFieldCss    = (UITextField)->()
typealias UITextViewCss     = (UITextView)->()
typealias UIImageCss        = (UIImage)->()
typealias UIImageViewCss    = (UIImageView)->()


//MARK: bgColor, titleColor, bgImg
func +=<T:UIView>(lhsCube: T, rhsCube: UIColor) {
    lhsCube.setCss(rhsCube.bgCss)
}

extension UIColor {
    var bgCss: UIViewCss {
        get{
            return { v in
                v.backgroundColor = self
            }
        }
    }
    
    var textColorCss: Css {
        get{
            return {
                if $0 is UILabel {
                    ($0 as! UILabel).textColor = self
                    return
                }
                if $0 is UIButton {
                    ($0 as! UIButton).setTitleColor(self, for: .normal)
                    return
                }
                if $0 is UITextField {
                    ($0 as! UITextField).textColor = self
                }
            }
        }
    }
    
    var titleHColor: UIButtonCss {
        get{
            return {
                $0.setTitleColor(self, for: .highlighted)
            }
        }
    }
    
    var bgImgCss: UIButtonCss {
        get{
            return {
                $0.setBackgroundImage(self.toImage(), for: .normal)
            }
        }
    }
    
    var bgImgHCss: UIButtonCss {
        get {
            return {
                $0.setBackgroundImage(self.toImage(), for: .highlighted)
            }
        }
    }
}

//MARK: text placeholder
func +=<T: NSObject>(lhsCube: T, rhsCube: String) {
    lhsCube.setCss(rhsCube.css)
}

extension String {
    var css: Css {
        get {
            return {
                if let a = $0 as? UILabel {
                    a.text = self
                    return
                }
                if let a = $0 as? UIButton {
                    a.setTitle(self, for: .normal)
                    return
                }
                if let a = $0 as? UITextView {
                    a.text = self
                    return
                }
                if let a = $0 as? UITextField {
                    a.text = self
                    return
                }
            }
        }
    }
    
    var placeholderCss: UITextFieldCss {
        return {
            $0.placeholder = self
        }
    }
}
