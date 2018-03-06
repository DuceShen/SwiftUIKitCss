//
//  AnyObjectCss.swift
//  aifengrong
//
//  Created by DuceShen on 2017/11/7.
//  Copyright © 2017年 nengneng. All rights reserved.
//

import Foundation
import UIKit

extension NSObject {
    func setCss<T:NSObject>(_ css:((T)->())...) {
        if self is T {
            css.forEach({
                $0(self as! T)
            })
        }
        else {
            fatalError("类型错误\(T.self)的css不能赋值给\(self.classForCoder)")
        }
    }
}
