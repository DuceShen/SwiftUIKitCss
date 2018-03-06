//
//  UserDefaults.swift
//  aifengrong
//
//  Created by DuceShen on 2017/11/7.
//  Copyright © 2017年 nengneng. All rights reserved.
//

import Foundation

let kUserDefaults = UserDefaults.standard

func NNSave(_ key: String, _ obj: Any) {
    kUserDefaults.set(obj, forKey: key)
    
    kUserDefaults.synchronize()
}

func NNDelete(_ key: String) {
    kUserDefaults.removeObject(forKey: key)
    
    kUserDefaults.synchronize()
}

func NNRead(_ key: String) -> Any? {
    
    return kUserDefaults.object(forKey: key)
}
