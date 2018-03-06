//
//  CssOperator.swift
//  aifengrong
//
//  Created by DuceShen on 2017/11/7.
//  Copyright © 2017年 nengneng. All rights reserved.
//

import Foundation
import UIKit

func +<T:NSObject>(lhsCube: @escaping ((T)->()), rhsCube: @escaping ((T)->())) -> (T)->() {
    return {
        lhsCube($0)
        rhsCube($0)
    }
}

func +=<T:NSObject>(lhsCube: T, rhsCube: @escaping ((T)->())) {
    lhsCube.setCss(rhsCube)
}

func +<T:NSObject>(lhsCube: T, rhsCube: @escaping ((T)->())) -> T {
    lhsCube.setCss(rhsCube)
    return lhsCube
}

func +<T:NSObject>(lhsCube: @escaping ((T)->()), rhsCube: T) -> T {
    rhsCube.setCss(lhsCube)
    return rhsCube
}
