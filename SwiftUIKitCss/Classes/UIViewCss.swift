//
//  UIViewCss.swift
//  aifengrong
//
//  Created by DuceShen on 2017/11/7.
//  Copyright © 2017年 nengneng. All rights reserved.
//

import Foundation
import UIKit

func edgeAnitia(_ value: Bool) -> UIViewCss {
    return {
        $0.layer.allowsEdgeAntialiasing = value
    }
}

func clipsToBounds(_ value: Bool) -> UIViewCss {
    return {
        $0.clipsToBounds = value
    }
}

func +=(lhsCube: UIView, rhsCube: CGRect) {
    lhsCube.frame = rhsCube
}

//MARK: borderWidth, cornerRadius
extension CGFloat {
    var borderCss: UIViewCss {
        get {
            return {
                $0.layer.borderWidth = self
            }
        }
    }
    
    var cornerRadiusCss: UIViewCss {
        get {
            return {
                $0.layer.cornerRadius = self
                $0.clipsToBounds = true
            }
        }
    }
}

extension Int {
    var borderCss: UIViewCss {
        get {
            return CGFloat(self).borderCss
        }
    }
    
    var cornerRadiusCss: UIViewCss {
        get {
            return CGFloat(self).cornerRadiusCss
        }
    }
}

extension Double {
    var borderCss: UIViewCss {
        get {
            return CGFloat(self).borderCss
        }
    }
    
    var cornerRadiusCss: UIViewCss {
        get {
            return CGFloat(self).cornerRadiusCss
        }
    }
}

//MARK: borderColor
extension UIColor {
    var boderCss: UIViewCss {
        get {
            return {
                $0.layer.borderColor = self.cgColor
            }
        }
    }
}

//MARK: frame, center, size
extension CGRect {
    var css: UIViewCss {
        get {
            return {
                $0.frame = self
            }
        }
    }
}

extension CGPoint {
    var centerCss: UIViewCss {
        get {
            return {
                $0.center = self
            }
        }
    }
}

extension CGSize {
    var sizeCss: UIViewCss {
        get {
            return {
                $0.frame.size = self
            }
        }
    }
}
