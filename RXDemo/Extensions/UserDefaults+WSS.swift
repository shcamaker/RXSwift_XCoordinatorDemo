//
//  UserDefaults+WSS.swift
//  XCoordinator-Example
//
//  Created by 沈海超 on 2020/1/8.
//  Copyright © 2020 QuickBird Studios. All rights reserved.
//

import Foundation

struct PreferenceName<Type>: RawRepresentable {
    typealias RawValue = String
    
    var rawValue: String
    
    init(rawValue: String) {
        self.rawValue = rawValue
    }
}

extension UserDefaults {
    
    subscript(key: PreferenceName<Bool>) -> Bool {
        set { set(newValue, forKey: key.rawValue) }
        get { return bool(forKey: key.rawValue) }
    }
 
    subscript(key: PreferenceName<Int>) -> Int {
        set { set(newValue, forKey: key.rawValue) }
        get { return integer(forKey: key.rawValue) }
    }
    
    subscript(key: PreferenceName<Any>) -> Any? {
        set { set(newValue, forKey: key.rawValue) }
        get { return value(forKey: key.rawValue) }
    }
    
}

struct PreferenceNames {
    
    static let maxCacheSize = PreferenceName<Int>(rawValue: "MaxCacheSize")
    
    static let badgeType = PreferenceName<Int>(rawValue: "BadgeType")
    
    static let backgroundImageURL = PreferenceName<URL>(rawValue: "BackgroundImageURL")
    
}

func doss() {
    //set
    UserDefaults.standard[PreferenceNames.maxCacheSize] = 30
    //get
    _ = UserDefaults.standard[PreferenceNames.maxCacheSize] 
}
