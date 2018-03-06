//
//  UIColor.swift
//  aifengrong
//
//  Created by DuceShen on 2017/11/7.
//  Copyright © 2017年 nengneng. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    func toImage(frame: CGRect = CGRect.init(x: 0, y: 0, width: 1, height: 1)) -> UIImage {
        UIGraphicsBeginImageContext(frame.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(self.cgColor)
        context!.fill(frame)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
