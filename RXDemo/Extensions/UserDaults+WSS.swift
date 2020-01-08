//
//  UserDaults+WSS.swift
//  XCoordinator-Example
//
//  Created by 沈海超 on 2020/1/8.
//  Copyright © 2020 QuickBird Studios. All rights reserved.
//

import Foundation

protocol UserDefaultsSettable {
    associatedtype defaultKeys: RawRepresentable
}

extension UserDefaultsSettable where defaultKeys.RawValue==String {
    static func set<T>(value: T, forKey key: defaultKeys) {
        let aKey = key.rawValue
        UserDefaults.standard.set(value, forKey: aKey)
    }
    static func bool(forKey key: defaultKeys) -> Bool? {
        let aKey = key.rawValue
        return UserDefaults.standard.bool(forKey: aKey)
    }
    static func int(forKey key: defaultKeys) -> Int? {
        let aKey = key.rawValue
        return UserDefaults.standard.integer(forKey: aKey)
    }
    static func value(forKey key: defaultKeys) -> Any? {
        let aKey = key.rawValue
        return UserDefaults.standard.value(forKey: aKey)
    }
}

extension UserDefaults {
    // 账户信息
    struct AccountInfo: UserDefaultsSettable {
        enum defaultKeys: String {
            case userName
            case age
        }
    }
    
    // 登录信息
    struct LoginInfo: UserDefaultsSettable {
        enum defaultKeys: String {
            case token
            case userId
        }
    }
}


