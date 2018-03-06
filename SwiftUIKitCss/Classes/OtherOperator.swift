//
//  OtherOperator.swift
//  aifengrong
//
//  Created by DuceShen on 2017/11/7.
//  Copyright © 2017年 nengneng. All rights reserved.
//

import Foundation
import UIKit

func +=<T:UIView>(lhsCube: T, rhsCube: T) {
    lhsCube.addSubview(rhsCube)
}

func +=<T:UIView>(lhsCube: T, rhsCube:[T]) {
    rhsCube.forEach {
        lhsCube.addSubview($0)
    }
}

func +<T: UIView>(lhsCube: T, rhsCube: T) -> [T] {
    return [lhsCube, rhsCube]
}

func +=<T:CALayer>(lhsCube: T, rhsCube: T) {
    lhsCube.addSublayer(rhsCube)
}
