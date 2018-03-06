//
//  UIImageViewCss.swift
//  aifengrong
//
//  Created by DuceShen on 2017/11/7.
//  Copyright © 2017年 nengneng. All rights reserved.
//

import Foundation
import UIKit

func +=(lhsCube: UIImageView, rhsCube: UIImage?) {
    lhsCube.image = rhsCube
}

extension UIImage {
    var css: UIImageViewCss {
        return {
            $0.image = self
        }
    }
    
    var hCss: UIImageViewCss {
        return {
            $0.highlightedImage = self
        }
    }
}
