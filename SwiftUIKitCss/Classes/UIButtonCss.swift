//
//  UIButtonCss.swift
//  aifengrong
//
//  Created by DuceShen on 2017/11/7.
//  Copyright © 2017年 nengneng. All rights reserved.
//

import Foundation
import UIKit

func titleCss(_ title: String, _ state: UIControlState = .normal) -> UIButtonCss {
    return {
        $0.setTitle(title, for: state)
    }
}

func titleColorCss(_ color: UIColor, _ state: UIControlState = .normal) -> UIButtonCss {
    return {
        $0.setTitleColor(color, for: state)
    }
}

func bgImg(_ color: UIColor, _ state: UIControlState = .normal) -> UIButtonCss {
    return {
        $0.setBackgroundImage(color.toImage(), for: state)
    }
}

func +=(lhsCube: UIButton, rhsCube: UIImage) {
    lhsCube.setBackgroundImage(rhsCube, for: .normal)
}

func +=(lhsCube: UIButton, rhsCube: String) {
    lhsCube.setTitle(rhsCube, for: .normal)
}

func +=(lhsCube: UIButton, rhsCube: UIFont) {
    lhsCube.titleLabel?.font = rhsCube
}

func +=(lhsCube: UIButton, rhsCube: CGFloat) {
    lhsCube.titleLabel?.font = rhsCube.customLightFont
}

extension UIImage {
    var bgCss: UIButtonCss {
        get {
            return {
                $0.setBackgroundImage(self, for: .normal)
            }
        }
    }
    
    var bgHCss: UIButtonCss {
        get {
            return {
                $0.setBackgroundImage(self, for: .highlighted)
            }
        }
    }
}

extension UIFont {
    var titleFontCss: UIButtonCss {
        get {
            return {
                $0.titleLabel?.font = self
            }
        }
    }
}

extension CGFloat {
    var titleLightFontCss: UIButtonCss {
        get {
            return {
                $0.titleLabel?.font = self.customLightFont
            }
        }
    }
    
    var titleRegularFontCss: UIButtonCss {
        get {
            return {
                $0.titleLabel?.font = self.customRegularFont
            }
        }
    }
}

extension String {
    var titleCss: UIButtonCss {
        get {
            return {
                $0.setTitle(self, for: .normal)
            }
        }
    }
    
    var titleHCss: UIButtonCss {
        get {
            return {
                $0.setTitle(self, for: .highlighted)
            }
        }
    }
}
